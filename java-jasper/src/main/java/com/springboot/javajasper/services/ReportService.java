package com.springboot.javajasper.services;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.core.io.ByteArrayResource;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import com.springboot.javajasper.repositories.ReportRepository;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Service
public class ReportService {

	final ReportRepository reportRepository;

	public ReportService(ReportRepository reportRepository) {
		this.reportRepository = reportRepository;
	}

	public ByteArrayResource getReport() throws JRException, IOException {
		List<Object> resultado = reportRepository.getReport();

		try {
			File file = ResourceUtils.getFile("classpath:report.jrxml");
			JasperReport jasperReport = JasperCompileManager.compileReport(file.getAbsolutePath());
			JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(resultado);
			Map<String, Object> parameters = new HashMap<>();
			parameters.put("Criado por", "Roberto");

			JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, dataSource);

			// Descomente a linha abaixo para ver o documento pdf sendo impresso em branco,
			// feito para teste.
			// OBS: Comente a linha 45 também, quando fizer isso.
//			JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters);

			String fileDestiny = "C:/Users/Roberto/eclipse-workspace2/java-jasper-springboot/java-jasper/src/main/resources/relatorio.pdf";
			JasperExportManager.exportReportToPdfFile(jasperPrint, fileDestiny);

			var pdfFile = new File(fileDestiny);
			var path = Paths.get(pdfFile.getAbsolutePath());
			var resource = new ByteArrayResource(Files.readAllBytes(path));

			return resource;

		} catch (FileNotFoundException e) {
			e.printStackTrace();
			throw e;

		}

	}

}
