package com.springboot.javajasper.repositories;

import java.util.List;

import org.springframework.stereotype.Repository;

import jakarta.persistence.EntityManager;

@Repository
public class ReportRepository {

	private final EntityManager entityManager;

	public ReportRepository(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	public List<Object> getReport(){
		String query = "select * from aluno al inner join aluno_endereco ae on al.id_aluno = ae.aluno_id\r\n"
				+ "inner join aluno_saude als on als.aluno_id = ae.aluno_id\r\n"
				+ "inner join bairro on bairro.id_bairro = ae.bairro_id\r\n"
				+ "inner join nome_logradouro nl on nl.bairro_id = bairro.id_bairro\r\n"
				+ "inner join municipio mun on mun.id_mun = ae.municipio_id\r\n"
				+ "inner join classe_aluno ca on ca.aluno_id = al.id_aluno\r\n"
				+ "inner join classe cl on cl.id_classe = ca.classe_id\r\n"
				+ "inner join escola esc on esc.id_esc = cl.escola_id\r\n"
				+ "inner join nivel n on n.id_nivel = cl.nivel_id\r\n"
				+ "inner join raca_cor rc on rc.id_raca_cor = al.raca_cor_id\r\n"
				+ "inner join sexo sx on sx.id_sexo = al.sexo_id\r\n"
				+ "inner join responsavel_aluno resal on resal.aluno_id = al.id_aluno\r\n"
				+ "inner join responsavel r on r.id_responsavel = resal.responsavel_id\r\n"
				+ "inner join parentesco pa on pa.id_parentesco = resal.parantesco_id\r\n"
				+ "inner join tipo_sanguineo ts on ts.id_tipo_sanguineo = als.tipo_sanguineo_id\r\n"
				+ "order by cl.turma";
		
		var resultado = entityManager.createNativeQuery(query);
		return resultado.getResultList();
	}
}
