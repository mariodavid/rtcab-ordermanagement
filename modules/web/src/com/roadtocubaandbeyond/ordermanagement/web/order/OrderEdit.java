package com.roadtocubaandbeyond.ordermanagement.web.order;

import com.haulmont.cuba.core.entity.FileDescriptor;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.data.CollectionDatasource;
import com.haulmont.reports.app.service.ReportService;
import com.haulmont.reports.entity.Report;
import com.roadtocubaandbeyond.ordermanagement.entity.Document;
import com.roadtocubaandbeyond.ordermanagement.entity.DocumentType;
import com.roadtocubaandbeyond.ordermanagement.entity.Order;
import com.roadtocubaandbeyond.ordermanagement.service.ReportLoadService;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class OrderEdit extends AbstractEditor<Order> {


    @Inject
    protected ReportLoadService reportLoadService;

    @Inject
    protected ReportService reportService;

    @Inject
    protected CollectionDatasource<Document, UUID> documentsDs;

    @Inject
    protected Metadata metadata;



    @Override
    protected boolean preCommit() {
        if(getItem().getOrderDate().after(getItem().getDeliveryDate())) {
            showNotification("something is wrong here...", NotificationType.ERROR);
            return false;
        }
        else {
            return true;
        }
    }

    public void generateInvoice() {

        Report invoiceReport = reportLoadService.loadReportBySystemcode("order_invoice");


        String fileName = "myFile";
        Map<String, Object> params = new HashMap<>();
        params.put("entity", getItem());
        FileDescriptor invoiceFile = reportService.createAndSaveReport(invoiceReport, params, fileName);


        Document invoiceDocument = metadata.create(Document.class);
        invoiceDocument.setFile(invoiceFile);
        invoiceDocument.setName(fileName);
        invoiceDocument.setType(DocumentType.INVOICE);
        invoiceDocument.setOrder(getItem());


        documentsDs.addItem(invoiceDocument);
    }
}