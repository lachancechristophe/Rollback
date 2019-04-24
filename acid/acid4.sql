BEGIN;
SAVEPOINT no_admin_granted;

UPDATE account SET is_admin = True
WHERE username = 'DocMailloux';

SAVEPOINT admin_granted;

UPDATE account_permission SET admin_level = 3
WHERE id_account = 1;
UPDATE account_permission SET allow_write = True
WHERE id_account = 1;
UPDATE account_permission SET allow_del = True
WHERE id_account = 1;

SAVEPOINT permissions_granted;
COMMIT;