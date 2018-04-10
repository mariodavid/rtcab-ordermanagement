-- Config
insert into SYS_CONFIG
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, NAME, VALUE)
values ('a2856777-3d69-212a-ac5a-fedb35e00851', 1, '2018-04-01 20:36:31', 'admin', '2018-04-01 20:36:31', null, 'fts.enabled', 'true');
insert into SYS_CONFIG
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, NAME, VALUE)
values ('9dd02ff0-8ebb-6ad5-181e-7dd295157ede', 1, '2018-04-01 20:36:38', 'admin', '2018-04-01 20:36:38', null, 'cuba.schedulingActive', 'true');

-- Scheduled Tasks
insert into SYS_SCHEDULED_TASK
(ID, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DEFINED_BY, BEAN_NAME, METHOD_NAME, CLASS_NAME, SCRIPT_NAME, USER_NAME, IS_SINGLETON, IS_ACTIVE, PERIOD, TIMEOUT, START_DATE, CRON, SCHEDULING_TYPE, TIME_FRAME, START_DELAY, PERMITTED_SERVERS, LOG_START, LOG_FINISH, LAST_START_TIME, LAST_START_SERVER, METHOD_PARAMS, DESCRIPTION)
values ('3c7eaf4b-b5fa-5ef3-e1e8-d03cd91c3d56', '2018-04-01 20:37:02', 'admin', '2018-04-01 20:37:03', 'admin', null, null, 'B', 'cuba_FtsManager', 'processQueue', null, null, null, null, true, 60, null, null, null, 'P', null, null, null, true, true, null, null, '<?xml version="1.0" encoding="UTF-8"?>

<params/>
', null);
