package com.roadtocubaandbeyond.ordermanagement.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;

@Table(name = "RTCABO_DEFAULT_PRODUCT")
@Entity(name = "rtcabo_DefaultProduct")
public class DefaultProduct extends StandardEntity {
    private static final long serialVersionUID = 2932486886724732413L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PRODUCT_ID")
    protected Product product;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CUSTOMER_ID")
    protected Customer customer;

    @Column(name = "CUSTOMER_TYPE")
    protected String customerType;

    public CustomerType getCustomerType() {
        return customerType == null ? null : CustomerType.fromId(customerType);
    }

    public void setCustomerType(CustomerType customerType) {
        this.customerType = customerType == null ? null : customerType.getId();
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public boolean globalDefaultProduct() {
        return getCustomer() == null && getCustomerType() == null;
    }
}