BEGIN;
SAVEPOINT no_table_account_permission;

CREATE TABLE account_permission (
    id          SERIAL PRIMARY KEY,
    id_account  INT,
    admin_level INT,
    allow_read  BOOL,
    allow_write BOOL
);
SAVEPOINT table_account_permission;

ALTER TABLE account_permission
ADD COLUMN allow_del BOOL;
SAVEPOINT account_permission_del;

ALTER TABLE account_permission
ADD COLUMN allow_mod BOOL;
SAVEPOINT account_permission_mod;

ROLLBACK TO account_permission_del;
COMMIT;

