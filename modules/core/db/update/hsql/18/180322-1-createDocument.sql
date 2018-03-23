create table RTCABO_DOCUMENT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    FILE_ID varchar(36) not null,
    TYPE_ varchar(50),
    ORDER_ID varchar(36) not null,
    --
    primary key (ID)
);
