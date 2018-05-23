-- begin RTCABO_CUSTOMER
create table RTCABO_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    TENANT_ID varchar(36) not null,
    --
    NAME varchar(255) not null,
    FIRST_NAME varchar(255),
    BIRTHDAY date not null,
    --
    primary key (ID)
)^
-- end RTCABO_CUSTOMER
-- begin RTCABO_ADDRESS
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
)^
-- end RTCABO_ADDRESS
-- begin RTCABO_PRODUCT
create table RTCABO_PRODUCT (
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
    CODE varchar(255),
    CATEGORY_ID varchar(36),
    --
    primary key (ID)
)^
-- end RTCABO_PRODUCT
-- begin RTCABO_LINE_ITEM
create table RTCABO_LINE_ITEM (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PRODUCT_ID varchar(36) not null,
    PRICE decimal(19, 2) not null,
    QUANTITY integer not null,
    ORDER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end RTCABO_LINE_ITEM
-- begin RTCABO_ORDER
create table RTCABO_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CUSTOMER_ID varchar(36) not null,
    ORDER_ID varchar(255),
    ORDER_DATE date not null,
    DELIVERY_DATE date not null,
    --
    primary key (ID)
)^
-- end RTCABO_ORDER
-- begin RTCABO_DOCUMENT
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
)^
-- end RTCABO_DOCUMENT
-- begin RTCABO_PRODUCT_CATEGORY
create table RTCABO_PRODUCT_CATEGORY (
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
    CODE varchar(255),
    --
    primary key (ID)
)^
-- end RTCABO_PRODUCT_CATEGORY
-- begin RTCABO_TENANT
create table RTCABO_TENANT (
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
    CODE varchar(255) not null,
    --
    primary key (ID)
)^
-- end RTCABO_TENANT
