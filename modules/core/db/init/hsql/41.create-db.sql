
-- Roles

insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('2aa8f801-492b-7a61-60c0-2d013e799450', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 'Master data manager', null, null, 0, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('7ab918f2-7da0-3bcb-f8b1-123495365892', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Product:read', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('21be9363-d13b-449a-2266-c75d3fb23471', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Customer:create', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('fc1c1c39-0f37-e7d1-c003-0e5046fcaae9', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 10, 'rtcabo$ProductCategory.browse', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d0d4aabe-cd47-4818-506c-040262069817', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Product:update', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('8b0b54e7-8c5b-4f3a-1cf9-fd05f7dad267', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$ProductCategory:delete', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('34e8a33c-7457-f2a1-ddd6-aefd7f0dcfcb', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 10, 'rtcabo$Order.browse', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('cd8d7d52-fe02-0834-1258-5865236d6bf6', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$ProductCategory:update', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('586e8fda-48bc-a8b4-14d9-769dbc015e2b', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Order:read', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('191c0691-5439-520c-8a87-240a8197dbf5', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Customer:update', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('4760ff7d-1a50-7645-8f7c-92d3209499eb', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Customer:read', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('050131d9-42ec-8c51-b9fb-6490121b1c4c', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 10, 'administration', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('453be1b0-9bfe-ee32-8658-da20aec6ce22', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Customer:delete', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('c1b2d650-bbf5-5345-1a07-54f19a7ae8c0', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Order:create', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('381b63f0-5892-888e-4cd6-960a4acd6882', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$ProductCategory:create', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('22552bb7-9db0-8bf0-d510-e38c1cce0298', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 10, 'reports', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b0ba4af1-f135-1cfc-9371-36432740cb98', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Order:update', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b93e1405-616c-ea91-394a-dec037ce4daa', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 40, 'cuba.restApi.enabled', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('1b63d135-43e4-cbc4-2931-946cab32c433', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$LineItem:update', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('982939ab-e2cf-3b81-982b-d9eac0f1d390', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$LineItem:read', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('13d11613-b50c-c0bb-7097-ca134271f32c', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Product:create', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('d7c0d040-7318-e9d5-701a-5bac52518d87', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$ProductCategory:read', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b7788113-034a-2c39-5e8f-7997f668355c', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 10, 'rtcabo$Product.browse', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('88c28988-367f-c3fc-c9b7-69e50ca73609', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$LineItem:create', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('b5280f08-31e8-4f67-8aee-f7e7f3a737f7', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Product:delete', 1, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('0314faba-46cb-e162-b51f-90bedeb644a8', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$LineItem:delete', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('6069a0b2-a9bb-53ae-93a4-0adc7a4de9c0', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 10, 'rtcabo$Customer.browse', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('2baddbab-3906-d064-c286-359d84dde9df', 1, '2018-04-03 13:10:29', 'admin', '2018-04-03 13:10:29', null, null, null, 20, 'rtcabo$Order:delete', 0, '2aa8f801-492b-7a61-60c0-2d013e799450');
