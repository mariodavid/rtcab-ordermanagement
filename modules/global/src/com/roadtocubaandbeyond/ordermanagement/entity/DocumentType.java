package com.roadtocubaandbeyond.ordermanagement.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum DocumentType implements EnumClass<String> {

    INVOICE("INVOICE"),
    SHIPMENT_NOTE("SHIPMENT_NOTE"),
    REMINDER("REMINDER");

    private String id;

    DocumentType(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static DocumentType fromId(String id) {
        for (DocumentType at : DocumentType.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}