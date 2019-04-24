BEGIN;
SAVEPOINT no_user_created;

INSERT INTO account (
    username,
    is_admin,
    email_address,
    is_confirmed,
    subscription_type,
    creation_timestamp,
    country
)
VALUES (
    'DocMailloux',
    True,
    'doc@mailloux.ca',
    True,
    1,
    current_timestamp,
    'Canada'
);
SAVEPOINT user_created;

INSERT INTO account_permission (
id_account,
admin_level,
allow_read,
allow_write,
allow_del
)
VALUES (
    1,
    3,
    True,
    True,
    True
);

SAVEPOINT account_permission_entered;
COMMIT;