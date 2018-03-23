package com.roadtocubaandbeyond.ordermanagement.listener;

import com.haulmont.cuba.core.app.UniqueNumbersAPI;
import org.springframework.stereotype.Component;
import com.haulmont.cuba.core.listener.BeforeInsertEntityListener;
import com.haulmont.cuba.core.EntityManager;
import com.roadtocubaandbeyond.ordermanagement.entity.Order;

import javax.inject.Inject;

@Component("rtcabo_OrderIdCreator")
public class OrderIdCreator implements BeforeInsertEntityListener<Order> {

    @Inject
    protected UniqueNumbersAPI uniqueNumbersAPI;

    @Override
    public void onBeforeInsert(Order entity, EntityManager entityManager) {


        entity.setOrderId("" + uniqueNumbersAPI.getNextNumber("orderId"));
    }


}