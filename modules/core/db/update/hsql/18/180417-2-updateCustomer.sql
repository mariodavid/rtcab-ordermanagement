alter table RTCABO_CUSTOMER add column TENANT_ID varchar(36) ^
update RTCABO_CUSTOMER set TENANT_ID = '00000000-0000-0000-0000-000000000000' where TENANT_ID is null ;
alter table RTCABO_CUSTOMER alter column TENANT_ID set not null ;
