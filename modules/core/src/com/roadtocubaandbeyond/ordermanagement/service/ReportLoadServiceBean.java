package com.roadtocubaandbeyond.ordermanagement.service;

import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.LoadContext;
import com.haulmont.reports.entity.Report;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service(ReportLoadService.NAME)
public class ReportLoadServiceBean implements ReportLoadService {


    @Inject
    protected DataManager dataManager;

    @Override
    public Report loadReportBySystemcode(String systemCode) {

        LoadContext<Report> loadContext = LoadContext.create(Report.class)
                .setQuery(LoadContext.createQuery("select e from report$Report e where e.code = :systemCode")
                        .setParameter("systemCode", systemCode))
                .setView("report.view");
        List<Report> allReports = dataManager.loadList(loadContext);

        return allReports.get(0);
    }
}