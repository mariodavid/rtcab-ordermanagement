create table RTCABO_ADDRESS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    STREET varchar(255) not null,
    POST_CODE varchar(255) not null,
    CITY varchar(255) not null,
    CUSTOMER_ID varchar(36) not null,
    --
    primary key (ID)
);
