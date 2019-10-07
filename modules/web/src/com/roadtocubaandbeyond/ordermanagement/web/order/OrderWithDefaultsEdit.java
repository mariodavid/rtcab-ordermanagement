package com.roadtocubaandbeyond.ordermanagement.web.order;

import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.CollectionPropertyContainer;
import com.haulmont.cuba.gui.model.DataContext;
import com.haulmont.cuba.gui.screen.*;
import com.roadtocubaandbeyond.ordermanagement.entity.DefaultProduct;
import com.roadtocubaandbeyond.ordermanagement.entity.LineItem;
import com.roadtocubaandbeyond.ordermanagement.entity.Order;

import javax.inject.Inject;
import java.math.BigDecimal;

@UiController("rtcabo$OrderWithDefaults.edit")
@UiDescriptor("order-with-defaults-edit.xml")
@EditedEntityContainer("orderDc")
@LoadDataBeforeShow
public class OrderWithDefaultsEdit extends StandardEditor<Order> {

    @Inject
    protected CollectionContainer<DefaultProduct> defaultProductsDc;
    @Inject
    protected CollectionPropertyContainer<LineItem> lineItemsDc;
    @Inject
    protected DataContext dataContext;

    @Subscribe
    protected void onAfterShow(AfterShowEvent event) {
        defaultProductsDc.getItems()
                .stream()
                .filter(this::isValidDefaultProductInThisContext)
                .forEach(this::addLineItemForDefaultProduct);
    }

    private boolean addLineItemForDefaultProduct(DefaultProduct defaultProduct) {
        return lineItemsDc
                .getMutableItems()
                .add(createLineItemFromDefaultProduct(defaultProduct));
    }

    private boolean isValidDefaultProductInThisContext(DefaultProduct defaultProduct) {
        if (defaultProduct.globalDefaultProduct()) {
            return true;
        }
        else if (isDefaultProductForCurrentCustomer(defaultProduct)) {
            return true;
        }
        else if (isDefaultProductForCustomerType(defaultProduct)) {
            return true;
        }
        else {
            return false;
        }
    }

    private boolean isDefaultProductForCustomerType(DefaultProduct defaultProduct) {
        return getEditedEntity().getCustomer().getType() != null && defaultProduct.getCustomerType().equals(getEditedEntity().getCustomer().getType());
    }

    private boolean isDefaultProductForCurrentCustomer(DefaultProduct defaultProduct) {
        return defaultProduct.getCustomer() != null && defaultProduct.getCustomer().equals(getEditedEntity().getCustomer());
    }

    private LineItem createLineItemFromDefaultProduct(DefaultProduct defaultProduct) {
        LineItem lineItem = dataContext.create(LineItem.class);
        lineItem.setOrder(getEditedEntity());
        lineItem.setProduct(defaultProduct.getProduct());
        lineItem.setQuantity(1);
        lineItem.setPrice(new BigDecimal("100.0"));
        return lineItem;
    }


}