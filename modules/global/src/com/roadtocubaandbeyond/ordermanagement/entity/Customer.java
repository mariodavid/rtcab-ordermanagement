package com.roadtocubaandbeyond.ordermanagement.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

@NamePattern("%s|name")
@Table(name = "RTCABO_CUSTOMER")
@Entity(name = "rtcabo$Customer")
public class Customer extends StandardTenantEntity {
    private static final long serialVersionUID = 5364214967783482854L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "TYPE_")
    protected String type;

    @Column(name = "FIRST_NAME")
    protected String firstName;

    @Temporal(TemporalType.DATE)
    @NotNull
    @Column(name = "BIRTHDAY", nullable = false)
    protected Date birthday;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "customer")
    protected List<Address> addresses;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "customer")
    protected List<Order> orders;

    public CustomerType getType() {
        return type == null ? null : CustomerType.fromId(type);
    }

    public void setType(CustomerType type) {
        this.type = type == null ? null : type.getId();
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public List<Order> getOrders() {
        return orders;
    }


    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }

    public List<Address> getAddresses() {
        return addresses;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getBirthday() {
        return birthday;
    }


}