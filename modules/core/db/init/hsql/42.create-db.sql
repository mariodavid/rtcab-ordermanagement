
-- Users
insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('ae9f257a-c287-d9b8-90c7-110fbe9b09a7', 1, '2018-04-03 13:12:05', 'admin', '2018-04-03 13:12:05', null, null, null, 'jesse', 'jesse', '84943970a2df8c80b7d98ae39adab1c295dd9234', 'Jesse ', 'Jesse', null, null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);


-- UserRoles
insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('d932d5a6-512a-cc4b-3468-45813d5cda1c', 1, '2018-04-03 13:12:05', 'admin', '2018-04-03 13:12:05', null, null, null, 'ae9f257a-c287-d9b8-90c7-110fbe9b09a7', '2aa8f801-492b-7a61-60c0-2d013e799450');
