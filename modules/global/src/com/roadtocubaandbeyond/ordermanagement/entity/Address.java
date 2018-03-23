package com.roadtocubaandbeyond.ordermanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@NamePattern("%s, %s %s|street,postCode,city")
@Table(name = "RTCABO_ADDRESS")
@Entity(name = "rtcabo$Address")
public class Address extends StandardEntity {
    private static final long serialVersionUID = -8428991748490450321L;

    @NotNull
    @Column(name = "STREET", nullable = false)
    protected String street;

    @NotNull
    @Column(name = "POST_CODE", nullable = false)
    protected String postCode;

    @NotNull
    @Column(name = "CITY", nullable = false)
    protected String city;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CUSTOMER_ID")
    protected Customer customer;

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Customer getCustomer() {
        return customer;
    }


    public void setStreet(String street) {
        this.street = street;
    }

    public String getStreet() {
        return street;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }


}