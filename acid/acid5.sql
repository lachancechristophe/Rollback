BEGIN;
SAVEPOINT no_user_removed;

DELETE FROM account WHERE id = 1;
DELETE FROM account WHERE id = 2;

SAVEPOINT user_removed;

DELETE FROM account_permission WHERE id_account = 1;
DELETE FROM account_permission WHERE id_account = 2;

SAVEPOINT account_permission_removed;
COMMIT;