package com.roadtocubaandbeyond.ordermanagement.entity;

import javax.annotation.PostConstruct;
import javax.persistence.MappedSuperclass;
import java.util.UUID;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.global.AppBeans;
import com.haulmont.cuba.core.global.UserSessionSource;
import com.haulmont.cuba.security.app.UserSessionService;

@MappedSuperclass
public class StandardTenantEntity extends StandardEntity {
    private static final long serialVersionUID = -3799879781351079930L;

    @NotNull
    @Column(name = "TENANT_ID", nullable = false)
    protected UUID tenantId;

    public void setTenantId(UUID tenantId) {
        this.tenantId = tenantId;
    }

    public UUID getTenantId() {
        return tenantId;
    }


    @PostConstruct
    protected void initTenantId() {

        UserSessionSource uss = AppBeans.get(UserSessionSource.NAME);

        UUID sessionTenantId = uss.getUserSession().getAttribute("tenantId");


        if (sessionTenantId == null) {
            throw new IllegalArgumentException("User has currently no tenant assigned. Entity instance cannot be created");
        }


        setTenantId(sessionTenantId);

    }

}