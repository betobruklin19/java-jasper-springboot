package com.springboot.javajasper.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.javajasper.repositories.ReportRepository;

@Service
public class ReportService {
	
final ReportRepository reportRepository; 
	
	public ReportService(ReportRepository reportRepository) {
		this.reportRepository = reportRepository;
	}
	public List<Object> getReport() {
		var resultado = reportRepository.getReport();
		return resultado;
	}
}
