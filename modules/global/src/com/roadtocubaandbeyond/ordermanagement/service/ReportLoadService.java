package com.roadtocubaandbeyond.ordermanagement.service;


import com.haulmont.reports.entity.Report;

public interface ReportLoadService {
    String NAME = "rtcabo_ReportLoadService";

    Report loadReportBySystemcode(String systemCode);
}