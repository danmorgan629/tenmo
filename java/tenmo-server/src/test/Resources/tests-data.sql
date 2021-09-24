TRUNCATE accounts, transfer_statuses, transfer_types, transfers, users CASCADE;

INSERT INTO transfers (transferId, transferTypeId, transferStatusId, accountFromId, accountToId, amount )
VALUES (3001, 2, 2, 2001, 2002, 150);
       (3002, 2, 2, 2002, 2001, 50);
       (3003, 2, 2, 2001, 2003, 110);


INSERT INTO transfer_statuses (transfer_status_id, transfer_status_desc)
VALUES (1, 'Pending'),
       (2, 'Approved'),
       (3, 'Rejected');

INSERT INTO transfer_types (transfer_type_id, transfer_type_desc)
VALUES (1, 'Request'),
       (2, 'Send');

INSERT INTO accounts (account_id, user_id, balance)
VALUES (2001, 1001, 790),
       (2002, 1002, 1100),
       (2003, 1003, 1110);

INSERT INTO users (user_id, username)
VALUES (1001, 'user'),
       (1002, 'user2'),
       (1003, 'user3');

ALTER SEQUENCE users_user_id_seq RESTART WITH 1010;

ALTER SEQUENCE transfers_transfer_id_seq RESTART WITH 3010;

ALTER SEQUENCE accounts_account_id_seq RESTART WITH 2010;
