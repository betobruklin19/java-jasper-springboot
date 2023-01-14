package com.springboot.javajasper;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.javajasper.services.ReportService;

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
		public ResponseEntity<Object> getReport(){
			
			var response = reportService.getReport();
			return ResponseEntity.status(200).body(response);
		}

}
