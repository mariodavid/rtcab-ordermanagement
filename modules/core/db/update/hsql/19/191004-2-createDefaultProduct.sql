alter table RTCABO_DEFAULT_PRODUCT add constraint FK_RTCABO_DEFAULT_PRODUCT_PRODUCT foreign key (PRODUCT_ID) references RTCABO_PRODUCT(ID);
alter table RTCABO_DEFAULT_PRODUCT add constraint FK_RTCABO_DEFAULT_PRODUCT_CUSTOMER foreign key (CUSTOMER_ID) references RTCABO_CUSTOMER(ID);
create index IDX_RTCABO_DEFAULT_PRODUCT_PRODUCT on RTCABO_DEFAULT_PRODUCT (PRODUCT_ID);
create index IDX_RTCABO_DEFAULT_PRODUCT_CUSTOMER on RTCABO_DEFAULT_PRODUCT (CUSTOMER_ID);