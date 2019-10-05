package com.roadtocubaandbeyond.ordermanagement.web.order;

import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.gui.Dialogs;
import com.haulmont.cuba.gui.ScreenBuilders;
import com.haulmont.cuba.gui.app.core.inputdialog.DialogActions;
import com.haulmont.cuba.gui.app.core.inputdialog.InputDialog;
import com.haulmont.cuba.gui.app.core.inputdialog.InputParameter;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Action;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.roadtocubaandbeyond.ordermanagement.entity.Customer;
import com.roadtocubaandbeyond.ordermanagement.entity.Order;
import com.roadtocubaandbeyond.ordermanagement.entity.OrderPriority;

import javax.inject.Inject;

import static com.haulmont.cuba.gui.app.core.inputdialog.InputDialog.INPUT_DIALOG_OK_ACTION;
import static com.haulmont.cuba.gui.app.core.inputdialog.InputParameter.entityParameter;

public class OrderBrowse extends AbstractLookup {

    @Inject
    protected ScreenBuilders screenBuilders;
    @Inject
    protected Dialogs dialogs;
    @Inject
    protected DataManager dataManager;

    @Subscribe("ordersTable.createWithDefaults")
    protected void onOrdersTableCreateWithDefaults(Action.ActionPerformedEvent event) {
        dialogs
                .createInputDialog(this)
                .withParameters(customerInputParameter())
                .withActions(DialogActions.OK_CANCEL)
                .withCloseListener(this::openOrderWithDefaultsEditScreen)
                .withCaption("Create Order for Customer")
                .show();

    }

    private InputParameter customerInputParameter() {
        return entityParameter("customer", Customer.class)
                .withCaption("Customer")
                .withRequired(true);
    }

    private void openOrderWithDefaultsEditScreen(InputDialog.InputDialogCloseEvent closeEvent) {

        if (okWasClicked(closeEvent)) {
            screenBuilders.editor(Order.class, this.getFrameOwner())
                    .withScreenClass(OrderWithDefaultsEdit.class)
                    .newEntity()
                    .withInitializer(order -> {
                        Customer customer = getSelectedCustomer(closeEvent);
                        order.setCustomer(customer);
                        order.setPriority(priorityByCustomerType(customer));
                    })
                    .show();
        }

    }

    private boolean okWasClicked(InputDialog.InputDialogCloseEvent closeEvent) {
        return closeEvent.getCloseAction().equals(INPUT_DIALOG_OK_ACTION);
    }

    private OrderPriority priorityByCustomerType(Customer customer) {

        if (customer.getType() == null) {
            return null;
        }

        switch (customer.getType()) {
            case BIG: return OrderPriority.HIGH;
            case MEDIUM: return OrderPriority.MEDIUM;
            case SMALL: return OrderPriority.LOW;
            default: return null;
        }
    }

    private Customer getSelectedCustomer(InputDialog.InputDialogCloseEvent closeEvent) {
        Customer customer = closeEvent.getValue("customer");
        return dataManager.reload(customer, "customer-view");
    }
}