#!/bin/bash

SITE_SQL=$(cat <<EOF
    INSERT INTO \`piwik_site\`
    VALUES (1,
            'Example Piwik Site',
            'http://www.example.com',
            '2014-11-01 12:00:00',
            0,
            1,
            '',
            '',
            'UTC',
            'USD',
            '',
            '',
            '',
            '',
            'website',
            0);
EOF
)

echo $SITE_SQL | mysql --user={{ mysql_admin_user }} --password={{ mysql_admin_password }} --host=127.0.0.1 --port=3306 -D {{ piwki_db_name }}
