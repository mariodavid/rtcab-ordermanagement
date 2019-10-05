package com.roadtocubaandbeyond.ordermanagement.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum OrderPriority implements EnumClass<String> {

    HIGH("HIGH"),
    MEDIUM("MEDIUM"),
    LOW("LOW");

    private String id;

    OrderPriority(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static OrderPriority fromId(String id) {
        for (OrderPriority at : OrderPriority.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}