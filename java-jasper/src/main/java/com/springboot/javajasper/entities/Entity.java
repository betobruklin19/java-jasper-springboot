package com.springboot.javajasper.entities;

import java.sql.Date;

import jakarta.persistence.Id;
import jakarta.transaction.Transactional;

@Transactional
@jakarta.persistence.Entity
public class Entity {
	
	@Id
	private Integer id_aluno;
	private String nome_aluno;
	private Date data_nascimento;
	private String cpf_aluno;
	private String rg_aluno;
	private Date rg_data_emissao;
	private Integer rg_orgao_expedidor;
	private String nome_mae;
	private String nome_pai;
	private String telefone_aluno;
	@Id
	private Integer sexo_id;
	@Id
	private Integer raca_cor_id;
	private String email;
	private String nis;
	private Integer aluno_end_id;
	private Integer bairro_id;
	@Id
	private Integer nome_logradouro_id;
	@Id
	private Integer municipio_id;
	private String numero;
	private String cep;
	private String complemento;	
	private String ponto_referencia;
	@Id
	private Integer id_aluno_end;
	@Id
	private Integer id_aluno_saude;
	@Id
	private Integer tipo_sanguineo_id;
	private String intolerancia_alimentar_desc;
	private String alergia_medicamento_desc;
	private String doenca_desc;
	private String medicacao_continua_desc;
	private String acompanhamento_medico_desc;
	private String deficiencia_desc;
	private Integer relatorio;
	@Id
	private Integer id_bairro;
	private String nome_bairro;
	@Id
	private Integer id_logradouro;
	private String descricao_logradouro;
	@Id
	private Integer id_mun;
	private String nome_mun;
	private Integer uf_codigo;
	@Id
	private Integer id_classe_al;
	@Id
	private Integer classe_id;
	private Date data_matricula;
	private Integer ano_letivo;
	@Id
	private Integer id_classe;
	@Id
	private Integer nivel_id;
	@Id
	private Integer escola_id;
	private String serie;
	private String turma;
	@Id
	private Integer id_esc;
	private String nome_esc;
	private Integer codigo_inep;
	@Id
	private Integer id_nivel;
	private String descricao_nivel;
	@Id
	private Integer id_raca_cor; 
	private String descricao_raca_cor;
	@Id
	private Integer id_sexo;
	private String descricao_sexo;
	@Id
	private Integer id_resp_aluno;
	private Integer responsavel_id;
	@Id
	private Integer parantesco_id;
	@Id
	private Integer id_responsavel;
	private String nome_resp;
	private String cpf_resp;
	private String rg_resp;
	private String nic;
	private String telefone_resp;
	@Id
	private Integer id_parentesco;
	private String descricao_parentesco;
	@Id
	private Integer id_tipo_sanguineo;
	private String descricao_tipo_sang;
	
	
	public Integer getId_aluno() {
		return id_aluno;
	}
	public void setId_aluno(Integer id_aluno) {
		this.id_aluno = id_aluno;
	}
	public String getNome_aluno() {
		return nome_aluno;
	}
	public void setNome_aluno(String nome_aluno) {
		this.nome_aluno = nome_aluno;
	}
	public Date getData_nascimento() {
		return data_nascimento;
	}
	public void setData_nascimento(Date data_nascimento) {
		this.data_nascimento = data_nascimento;
	}
	public String getCpf_aluno() {
		return cpf_aluno;
	}
	public void setCpf_aluno(String cpf_aluno) {
		this.cpf_aluno = cpf_aluno;
	}
	public String getRg_aluno() {
		return rg_aluno;
	}
	public void setRg_aluno(String rg_aluno) {
		this.rg_aluno = rg_aluno;
	}
	public Date getRg_data_emissao() {
		return rg_data_emissao;
	}
	public void setRg_data_emissao(Date rg_data_emissao) {
		this.rg_data_emissao = rg_data_emissao;
	}
	public Integer getRg_orgao_expedidor() {
		return rg_orgao_expedidor;
	}
	public void setRg_orgao_expedidor(Integer rg_orgao_expedidor) {
		this.rg_orgao_expedidor = rg_orgao_expedidor;
	}
	public String getNome_mae() {
		return nome_mae;
	}
	public void setNome_mae(String nome_mae) {
		this.nome_mae = nome_mae;
	}
	public String getNome_pai() {
		return nome_pai;
	}
	public void setNome_pai(String nome_pai) {
		this.nome_pai = nome_pai;
	}
	public String getTelefone_aluno() {
		return telefone_aluno;
	}
	public void setTelefone_aluno(String telefone_aluno) {
		this.telefone_aluno = telefone_aluno;
	}
	public Integer getSexo_id() {
		return sexo_id;
	}
	public void setSexo_id(Integer sexo_id) {
		this.sexo_id = sexo_id;
	}
	public Integer getRaca_cor_id() {
		return raca_cor_id;
	}
	public void setRaca_cor_id(Integer raca_cor_id) {
		this.raca_cor_id = raca_cor_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNis() {
		return nis;
	}
	public void setNis(String nis) {
		this.nis = nis;
	}
//	public Integer getAluno_id() {
//		return aluno_id;
//	}
//	public void setAluno_id(Integer aluno_id) {
//		this.aluno_id = aluno_id;
//	}
//	public Integer getBairro_id() {
//		return bairro_id;
//	}
//	public void setBairro_id(Integer bairro_id) {
//		this.bairro_id = bairro_id;
//	}
	public Integer getNome_logradouro_id() {
		return nome_logradouro_id;
	}
	public void setNome_logradouro_id(Integer nome_logradouro_id) {
		this.nome_logradouro_id = nome_logradouro_id;
	}
	public Integer getMunicipio_id() {
		return municipio_id;
	}
	public void setMunicipio_id(Integer municipio_id) {
		this.municipio_id = municipio_id;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	public String getPonto_referencia() {
		return ponto_referencia;
	}
	public void setPonto_referencia(String ponto_referencia) {
		this.ponto_referencia = ponto_referencia;
	}
	public Integer getId_aluno_end() {
		return id_aluno_end;
	}
	public void setId_aluno_end(Integer id_aluno_end) {
		this.id_aluno_end = id_aluno_end;
	}
	public Integer getId_aluno_saude() {
		return id_aluno_saude;
	}
	public void setId_aluno_saude(Integer id_aluno_saude) {
		this.id_aluno_saude = id_aluno_saude;
	}
	public Integer getTipo_sanguineo_id() {
		return tipo_sanguineo_id;
	}
	public void setTipo_sanguineo_id(Integer tipo_sanguineo_id) {
		this.tipo_sanguineo_id = tipo_sanguineo_id;
	}
	public String getIntolerancia_alimentar_desc() {
		return intolerancia_alimentar_desc;
	}
	public void setIntolerancia_alimentar_desc(String intolerancia_alimentar_desc) {
		this.intolerancia_alimentar_desc = intolerancia_alimentar_desc;
	}
	public String getAlergia_medicamento_desc() {
		return alergia_medicamento_desc;
	}
	public void setAlergia_medicamento_desc(String alergia_medicamento_desc) {
		this.alergia_medicamento_desc = alergia_medicamento_desc;
	}
	public String getDoenca_desc() {
		return doenca_desc;
	}
	public void setDoenca_desc(String doenca_desc) {
		this.doenca_desc = doenca_desc;
	}
	public String getMedicacao_continua_desc() {
		return medicacao_continua_desc;
	}
	public void setMedicacao_continua_desc(String medicacao_continua_desc) {
		this.medicacao_continua_desc = medicacao_continua_desc;
	}
	public String getAcompanhamento_medico_desc() {
		return acompanhamento_medico_desc;
	}
	public void setAcompanhamento_medico_desc(String acompanhamento_medico_desc) {
		this.acompanhamento_medico_desc = acompanhamento_medico_desc;
	}
	public String getDeficiencia_desc() {
		return deficiencia_desc;
	}
	public void setDeficiencia_desc(String deficiencia_desc) {
		this.deficiencia_desc = deficiencia_desc;
	}
	public Integer getRelatorio() {
		return relatorio;
	}
	public void setRelatorio(Integer relatorio) {
		this.relatorio = relatorio;
	}
	public Integer getId_bairro() {
		return id_bairro;
	}
	public void setId_bairro(Integer id_bairro) {
		this.id_bairro = id_bairro;
	}
	public String getNome_bairro() {
		return nome_bairro;
	}
	public void setNome_bairro(String nome_bairro) {
		this.nome_bairro = nome_bairro;
	}
	public Integer getId_logradouro() {
		return id_logradouro;
	}
	public void setId_logradouro(Integer id_logradouro) {
		this.id_logradouro = id_logradouro;
	}
	public String getDescricao_logradouro() {
		return descricao_logradouro;
	}
	public void setDescricao_logradouro(String descricao_logradouro) {
		this.descricao_logradouro = descricao_logradouro;
	}
	public Integer getId_mun() {
		return id_mun;
	}
	public void setId_mun(Integer id_mun) {
		this.id_mun = id_mun;
	}
	public String getNome_mun() {
		return nome_mun;
	}
	public void setNome_mun(String nome_mun) {
		this.nome_mun = nome_mun;
	}
	public Integer getUf_codigo() {
		return uf_codigo;
	}
	public void setUf_codigo(Integer uf_codigo) {
		this.uf_codigo = uf_codigo;
	}
	public Integer getId_classe_al() {
		return id_classe_al;
	}
	public void setId_classe_al(Integer id_classe_al) {
		this.id_classe_al = id_classe_al;
	}
	public Integer getClasse_id() {
		return classe_id;
	}
	public void setClasse_id(Integer classe_id) {
		this.classe_id = classe_id;
	}
	public Date getData_matricula() {
		return data_matricula;
	}
	public void setData_matricula(Date data_matricula) {
		this.data_matricula = data_matricula;
	}
	public Integer getAno_letivo() {
		return ano_letivo;
	}
	public void setAno_letivo(Integer ano_letivo) {
		this.ano_letivo = ano_letivo;
	}
	public Integer getId_classe() {
		return id_classe;
	}
	public void setId_classe(Integer id_classe) {
		this.id_classe = id_classe;
	}
	public Integer getNivel_id() {
		return nivel_id;
	}
	public void setNivel_id(Integer nivel_id) {
		this.nivel_id = nivel_id;
	}
	public Integer getEscola_id() {
		return escola_id;
	}
	public void setEscola_id(Integer escola_id) {
		this.escola_id = escola_id;
	}
	public String getSerie() {
		return serie;
	}
	public void setSerie(String serie) {
		this.serie = serie;
	}
	public String getTurma() {
		return turma;
	}
	public void setTurma(String turma) {
		this.turma = turma;
	}
	public Integer getId_esc() {
		return id_esc;
	}
	public void setId_esc(Integer id_esc) {
		this.id_esc = id_esc;
	}
	public String getNome_esc() {
		return nome_esc;
	}
	public void setNome_esc(String nome_esc) {
		this.nome_esc = nome_esc;
	}
	public Integer getCodigo_inep() {
		return codigo_inep;
	}
	public void setCodigo_inep(Integer codigo_inep) {
		this.codigo_inep = codigo_inep;
	}
	public Integer getId_nivel() {
		return id_nivel;
	}
	public void setId_nivel(Integer id_nivel) {
		this.id_nivel = id_nivel;
	}
	public String getDescricao_nivel() {
		return descricao_nivel;
	}
	public void setDescricao_nivel(String descricao_nivel) {
		this.descricao_nivel = descricao_nivel;
	}
	public Integer getId_raca_cor() {
		return id_raca_cor;
	}
	public void setId_raca_cor(Integer id_raca_cor) {
		this.id_raca_cor = id_raca_cor;
	}
	public String getDescricao_raca_cor() {
		return descricao_raca_cor;
	}
	public void setDescricao_raca_cor(String descricao_raca_cor) {
		this.descricao_raca_cor = descricao_raca_cor;
	}
	public Integer getId_sexo() {
		return id_sexo;
	}
	public void setId_sexo(Integer id_sexo) {
		this.id_sexo = id_sexo;
	}
	public String getDescricao_sexo() {
		return descricao_sexo;
	}
	public void setDescricao_sexo(String descricao_sexo) {
		this.descricao_sexo = descricao_sexo;
	}
	public Integer getId_resp_aluno() {
		return id_resp_aluno;
	}
	public void setId_resp_aluno(Integer id_resp_aluno) {
		this.id_resp_aluno = id_resp_aluno;
	}
	public Integer getResponsavel_id() {
		return responsavel_id;
	}
	public void setResponsavel_id(Integer responsavel_id) {
		this.responsavel_id = responsavel_id;
	}
	public Integer getParantesco_id() {
		return parantesco_id;
	}
	public void setParantesco_id(Integer parantesco_id) {
		this.parantesco_id = parantesco_id;
	}
	public Integer getId_responsavel() {
		return id_responsavel;
	}
	public void setId_responsavel(Integer id_responsavel) {
		this.id_responsavel = id_responsavel;
	}
	public String getNome_resp() {
		return nome_resp;
	}
	public void setNome_resp(String nome_resp) {
		this.nome_resp = nome_resp;
	}
	public String getCpf_resp() {
		return cpf_resp;
	}
	public void setCpf_resp(String cpf_resp) {
		this.cpf_resp = cpf_resp;
	}
	public String getRg_resp() {
		return rg_resp;
	}
	public void setRg_resp(String rg_resp) {
		this.rg_resp = rg_resp;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getTelefone_resp() {
		return telefone_resp;
	}
	public void setTelefone_resp(String telefone_resp) {
		this.telefone_resp = telefone_resp;
	}
	public Integer getId_parentesco() {
		return id_parentesco;
	}
	public void setId_parentesco(Integer id_parentesco) {
		this.id_parentesco = id_parentesco;
	}
	public String getDescricao_parentesco() {
		return descricao_parentesco;
	}
	public void setDescricao_parentesco(String descricao_parentesco) {
		this.descricao_parentesco = descricao_parentesco;
	}
	public Integer getId_tipo_sanguineo() {
		return id_tipo_sanguineo;
	}
	public void setId_tipo_sanguineo(Integer id_tipo_sanguineo) {
		this.id_tipo_sanguineo = id_tipo_sanguineo;
	}
	public String getDescricao_tipo_sang() {
		return descricao_tipo_sang;
	}
	public void setDescricao_tipo_sang(String descricao_tipo_sang) {
		this.descricao_tipo_sang = descricao_tipo_sang;
	}
	
	public Integer getAluno_end_id() {
		return aluno_end_id;
	}
	public void setAluno_end_id(Integer aluno_end_id) {
		this.aluno_end_id = aluno_end_id;
	}
	
	public Integer getBairro_id() {
		return bairro_id;
	}
	public void setBairro_id(Integer bairro_id) {
		this.bairro_id = bairro_id;
	}
	
	@Override
	public String toString() {
		return "Entity [id_aluno=" + id_aluno + ", nome_aluno=" + nome_aluno + ", data_nascimento=" + data_nascimento
				+ ", cpf_aluno=" + cpf_aluno + ", rg_aluno=" + rg_aluno + ", rg_data_emissao=" + rg_data_emissao
				+ ", rg_orgao_expedidor=" + rg_orgao_expedidor + ", nome_mae=" + nome_mae + ", nome_pai=" + nome_pai
				+ ", telefone_aluno=" + telefone_aluno + ", sexo_id=" + sexo_id + ", raca_cor_id=" + raca_cor_id
				+ ", email=" + email + ", nis=" + nis + ", aluno_end_id=" + aluno_end_id + ", nome_logradouro_id="
				+ nome_logradouro_id + ", municipio_id=" + municipio_id + ", numero=" + numero + ", cep=" + cep
				+ ", complemento=" + complemento + ", ponto_referencia=" + ponto_referencia + ", id_aluno_end="
				+ id_aluno_end + ", id_aluno_saude=" + id_aluno_saude + ", tipo_sanguineo_id=" + tipo_sanguineo_id
				+ ", intolerancia_alimentar_desc=" + intolerancia_alimentar_desc + ", alergia_medicamento_desc="
				+ alergia_medicamento_desc + ", doenca_desc=" + doenca_desc + ", medicacao_continua_desc="
				+ medicacao_continua_desc + ", acompanhamento_medico_desc=" + acompanhamento_medico_desc
				+ ", deficiencia_desc=" + deficiencia_desc + ", relatorio=" + relatorio + ", id_bairro=" + id_bairro
				+ ", nome_bairro=" + nome_bairro + ", id_logradouro=" + id_logradouro + ", descricao_logradouro="
				+ descricao_logradouro + ", id_mun=" + id_mun + ", nome_mun=" + nome_mun + ", uf_codigo=" + uf_codigo
				+ ", id_classe_al=" + id_classe_al + ", classe_id=" + classe_id + ", data_matricula=" + data_matricula
				+ ", ano_letivo=" + ano_letivo + ", id_classe=" + id_classe + ", nivel_id=" + nivel_id + ", escola_id="
				+ escola_id + ", serie=" + serie + ", turma=" + turma + ", id_esc=" + id_esc + ", nome_esc=" + nome_esc
				+ ", codigo_inep=" + codigo_inep + ", id_nivel=" + id_nivel + ", descricao_nivel=" + descricao_nivel
				+ ", id_raca_cor=" + id_raca_cor + ", descricao_raca_cor=" + descricao_raca_cor + ", id_sexo=" + id_sexo
				+ ", descricao_sexo=" + descricao_sexo + ", id_resp_aluno=" + id_resp_aluno + ", responsavel_id="
				+ responsavel_id + ", parantesco_id=" + parantesco_id + ", id_responsavel=" + id_responsavel
				+ ", nome_resp=" + nome_resp + ", cpf_resp=" + cpf_resp + ", rg_resp=" + rg_resp + ", nic=" + nic
				+ ", telefone_resp=" + telefone_resp + ", id_parentesco=" + id_parentesco + ", descricao_parentesco="
				+ descricao_parentesco + ", id_tipo_sanguineo=" + id_tipo_sanguineo + ", descricao_tipo_sang="
				+ descricao_tipo_sang + "]";
	}
	
	
}
