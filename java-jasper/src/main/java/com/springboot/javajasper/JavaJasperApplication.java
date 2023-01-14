package com.springboot.javajasper;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.javajasper.services.ReportService;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;

@SpringBootApplication
@RestController
public class JavaJasperApplication {

	final ReportService reportService;

	public JavaJasperApplication(ReportService reportService) {
		this.reportService = reportService;
	}
	
	public static void main(String[] args) {
		SpringApplication.run(JavaJasperApplication.class, args);
	}
		@GetMapping("/")
		public ResponseEntity<Object> getHomePage() throws IOException{
			
			String fileDestiny = "C:/Users/Roberto/eclipse-workspace2/java-jasper-springboot/java-jasper/src/main/resources/index.html";

			var htmlFile = new File(fileDestiny);
			var path = Paths.get(htmlFile.getAbsolutePath());
			var resource = new ByteArrayResource(Files.readAllBytes(path));
			
			return ResponseEntity.ok().contentType(MediaType.TEXT_HTML).body(resource);
			
		}
		
		@GetMapping("/reports")
		public ResponseEntity<Object> getReport() throws FileNotFoundException, IOException, JRException{
			
			var response = reportService.getReport();
			return ResponseEntity.ok().contentType(MediaType.APPLICATION_PDF).body(response);
		}

}
