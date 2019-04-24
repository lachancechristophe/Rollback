BEGIN;
SAVEPOINT no_admin_revoked;

UPDATE account SET is_admin = False
WHERE username = 'DocMailloux';

UPDATE account SET is_admin = False
WHERE username = 'Ericlavoie';

SAVEPOINT admin_revoked;

UPDATE account_permission SET admin_level = 0
WHERE id_account = 1;
UPDATE account_permission SET allow_write = False
WHERE id_account = 1;
UPDATE account_permission SET allow_del = False
WHERE id_account = 1;

UPDATE account_permission SET admin_level = 0
WHERE id_account = 2;
UPDATE account_permission SET allow_write = False
WHERE id_account = 2;
UPDATE account_permission SET allow_del = False
WHERE id_account = 2;

SAVEPOINT permissions_revoked;
COMMIT;