#!/bin/bash

SALT=`head -c 10 /dev/random | base64 | cut -c-10`

PASSWORD=$(
python3 - <<EOF
import hashlib, binascii
dk = binascii.hexlify(hashlib.pbkdf2_hmac('sha256', b'{{gogs_admin_password}}', b'${SALT}', 10000, 50))
print(str(dk, "ascii"))
EOF
)

mysql -h localhost -u{{gogs_db_user}} -p{{gogs_db_password}} --protocol tcp {{gogs_db_name}} <<EOF
INSERT INTO user (lower_name, name, email, passwd, salt, is_active, is_admin)
SELECT * FROM (SELECT '{{gogs_admin_user}}' AS lower_name, '{{gogs_admin_user}}' AS name, '{{admin_email}}' AS email, '${PASSWORD}' as passwd, '${SALT}' as salt, 1 AS is_active, 1 AS is_admin) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM user WHERE name = '{{gogs_admin_user}}'
) LIMIT 1;
EOF
