PGDMP         !                 {            escola    15.1    15.1 H    w           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            x           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            z           1262    17023    escola    DATABASE     }   CREATE DATABASE escola WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE escola;
                postgres    false            �            1259    17057    aluno    TABLE       CREATE TABLE public.aluno (
    id_aluno integer NOT NULL,
    nome_aluno character varying(155) NOT NULL,
    data_nascimento date NOT NULL,
    cpf_aluno character varying(45) NOT NULL,
    rg_aluno character varying(45),
    rg_data_emissao date,
    rg_orgao_expedidor integer,
    nome_mae character varying(155),
    nome_pai character varying(155),
    telefone_aluno character varying(45),
    sexo_id integer NOT NULL,
    raca_cor_id integer NOT NULL,
    email character varying(45),
    nis character varying(45)
);
    DROP TABLE public.aluno;
       public         heap    postgres    false            �            1259    17124    aluno_endereco    TABLE     �  CREATE TABLE public.aluno_endereco (
    aluno_end_id integer NOT NULL,
    ale_bairro_id integer NOT NULL,
    nome_logradouro_id integer NOT NULL,
    municipio_id integer NOT NULL,
    numero character varying(45) NOT NULL,
    cep character varying(45) NOT NULL,
    complemento character varying(45),
    ponto_referencia character varying(255),
    id_aluno_end integer NOT NULL
);
 "   DROP TABLE public.aluno_endereco;
       public         heap    postgres    false            �            1259    17193    aluno_endereco_id_seq    SEQUENCE     �   ALTER TABLE public.aluno_endereco ALTER COLUMN id_aluno_end ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.aluno_endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    17169    aluno_saude    TABLE     �  CREATE TABLE public.aluno_saude (
    id_aluno_saude integer NOT NULL,
    aluno_id integer NOT NULL,
    tipo_sanguineo_id integer,
    intolerancia_alimentar_desc character varying(255),
    alergia_medicamento_desc character varying(255),
    doenca_desc character varying(255),
    medicacao_continua_desc character varying(255),
    acompanhamento_medico_desc character varying(255),
    deficiencia_desc character varying(255),
    relatorio smallint
);
    DROP TABLE public.aluno_saude;
       public         heap    postgres    false            �            1259    17134    bairro    TABLE     p   CREATE TABLE public.bairro (
    id_bairro integer NOT NULL,
    nome_bairro character varying(255) NOT NULL
);
    DROP TABLE public.bairro;
       public         heap    postgres    false            �            1259    17037    classe    TABLE     �   CREATE TABLE public.classe (
    id_classe integer NOT NULL,
    nivel_id integer NOT NULL,
    escola_id integer NOT NULL,
    serie character varying(45),
    turma character varying(45)
);
    DROP TABLE public.classe;
       public         heap    postgres    false            �            1259    17052    classe_aluno    TABLE     �   CREATE TABLE public.classe_aluno (
    id_classe_al integer NOT NULL,
    aluno_id integer NOT NULL,
    classe_id integer NOT NULL,
    data_matricula date,
    ano_letivo integer
);
     DROP TABLE public.classe_aluno;
       public         heap    postgres    false            �            1259    17377    entity    TABLE     I
  CREATE TABLE public.entity (
    tipo_sanguineo_id integer NOT NULL,
    sexo_id integer NOT NULL,
    raca_cor_id integer NOT NULL,
    parantesco_id integer NOT NULL,
    nome_logradouro_id integer NOT NULL,
    nivel_id integer NOT NULL,
    municipio_id integer NOT NULL,
    id_tipo_sanguineo integer NOT NULL,
    id_sexo integer NOT NULL,
    id_responsavel integer NOT NULL,
    id_resp_aluno integer NOT NULL,
    id_raca_cor integer NOT NULL,
    id_parentesco integer NOT NULL,
    id_nivel integer NOT NULL,
    id_mun integer NOT NULL,
    id_logradouro integer NOT NULL,
    id_esc integer NOT NULL,
    id_classe_al integer NOT NULL,
    id_classe integer NOT NULL,
    id_bairro integer NOT NULL,
    id_aluno_saude integer NOT NULL,
    id_aluno_end integer NOT NULL,
    id_aluno integer NOT NULL,
    escola_id integer NOT NULL,
    classe_id integer NOT NULL,
    bairro_id integer NOT NULL,
    aluno_id integer NOT NULL,
    acompanhamento_medico_desc character varying(255),
    alergia_medicamento_desc character varying(255),
    ano_letivo integer,
    cep character varying(255),
    codigo_inep integer,
    complemento character varying(255),
    cpf_aluno character varying(255),
    cpf_resp character varying(255),
    data_matricula date,
    data_nascimento character varying(255),
    deficiencia_desc character varying(255),
    descricao_logradouro character varying(255),
    descricao_nivel character varying(255),
    descricao_parentesco character varying(255),
    descricao_raca_cor character varying(255),
    descricao_sexo character varying(255),
    descricao_tipo_sang character varying(255),
    doenca_desc character varying(255),
    email character varying(255),
    intolerancia_alimentar_desc character varying(255),
    medicacao_continua_desc character varying(255),
    nic character varying(255),
    nis character varying(255),
    nome_aluno character varying(255),
    nome_bairro character varying(255),
    nome_esc character varying(255),
    nome_mae character varying(255),
    nome_mun character varying(255),
    nome_pai character varying(255),
    nome_resp character varying(255),
    numero character varying(255),
    ponto_referencia character varying(255),
    relatorio integer,
    responsavel_id integer,
    rg_aluno character varying(255),
    rg_data_emissao date,
    rg_orgao_expedidor character varying(255),
    rg_resp character varying(255),
    serie character varying(255),
    telefone_aluno character varying(255),
    telefone_resp character varying(255),
    turma character varying(255),
    uf_codigo integer,
    aluno_end_id integer
);
    DROP TABLE public.entity;
       public         heap    postgres    false            �            1259    17024    escola    TABLE     �   CREATE TABLE public.escola (
    id_esc integer NOT NULL,
    nome_esc character varying(100) NOT NULL,
    codigo_inep integer NOT NULL
);
    DROP TABLE public.escola;
       public         heap    postgres    false            �            1259    17129 	   municipio    TABLE     �   CREATE TABLE public.municipio (
    id_mun integer NOT NULL,
    nome_mun character varying(200) NOT NULL,
    uf_codigo integer NOT NULL
);
    DROP TABLE public.municipio;
       public         heap    postgres    false            �            1259    17029    nivel    TABLE     h   CREATE TABLE public.nivel (
    id_nivel integer NOT NULL,
    descricao_nivel character varying(45)
);
    DROP TABLE public.nivel;
       public         heap    postgres    false            �            1259    17139    nome_logradouro    TABLE     �   CREATE TABLE public.nome_logradouro (
    id_logradouro integer NOT NULL,
    descricao_logradouro character varying(255) NOT NULL,
    bairro_id integer NOT NULL
);
 #   DROP TABLE public.nome_logradouro;
       public         heap    postgres    false            �            1259    17114 
   parentesco    TABLE     w   CREATE TABLE public.parentesco (
    id_parentesco integer NOT NULL,
    descricao_parentesco character varying(45)
);
    DROP TABLE public.parentesco;
       public         heap    postgres    false            �            1259    17074    raca_cor    TABLE     z   CREATE TABLE public.raca_cor (
    id_raca_cor integer NOT NULL,
    descricao_raca_cor character varying(15) NOT NULL
);
    DROP TABLE public.raca_cor;
       public         heap    postgres    false            �            1259    17099    responsavel    TABLE       CREATE TABLE public.responsavel (
    id_responsavel integer NOT NULL,
    nome_resp character varying(255) NOT NULL,
    cpf_resp character varying(45) NOT NULL,
    rg_resp character varying(45),
    nic character varying(45),
    telefone_resp character varying(45)
);
    DROP TABLE public.responsavel;
       public         heap    postgres    false            �            1259    17094    responsavel_aluno    TABLE     �   CREATE TABLE public.responsavel_aluno (
    id_resp_aluno integer NOT NULL,
    aluno_id integer NOT NULL,
    responsavel_id integer NOT NULL,
    parantesco_id integer NOT NULL
);
 %   DROP TABLE public.responsavel_aluno;
       public         heap    postgres    false            �            1259    17079    sexo    TABLE     e   CREATE TABLE public.sexo (
    id_sexo integer NOT NULL,
    descricao_sexo character varying(20)
);
    DROP TABLE public.sexo;
       public         heap    postgres    false            �            1259    17176    tipo_sanguineo    TABLE     ~   CREATE TABLE public.tipo_sanguineo (
    id_tipo_sanguineo integer NOT NULL,
    descricao_tipo_sang character varying(45)
);
 "   DROP TABLE public.tipo_sanguineo;
       public         heap    postgres    false            g          0    17057    aluno 
   TABLE DATA           �   COPY public.aluno (id_aluno, nome_aluno, data_nascimento, cpf_aluno, rg_aluno, rg_data_emissao, rg_orgao_expedidor, nome_mae, nome_pai, telefone_aluno, sexo_id, raca_cor_id, email, nis) FROM stdin;
    public          postgres    false    218   qi       m          0    17124    aluno_endereco 
   TABLE DATA           �   COPY public.aluno_endereco (aluno_end_id, ale_bairro_id, nome_logradouro_id, municipio_id, numero, cep, complemento, ponto_referencia, id_aluno_end) FROM stdin;
    public          postgres    false    224   �m       q          0    17169    aluno_saude 
   TABLE DATA           �   COPY public.aluno_saude (id_aluno_saude, aluno_id, tipo_sanguineo_id, intolerancia_alimentar_desc, alergia_medicamento_desc, doenca_desc, medicacao_continua_desc, acompanhamento_medico_desc, deficiencia_desc, relatorio) FROM stdin;
    public          postgres    false    228   	o       o          0    17134    bairro 
   TABLE DATA           8   COPY public.bairro (id_bairro, nome_bairro) FROM stdin;
    public          postgres    false    226   �o       e          0    17037    classe 
   TABLE DATA           N   COPY public.classe (id_classe, nivel_id, escola_id, serie, turma) FROM stdin;
    public          postgres    false    216   2p       f          0    17052    classe_aluno 
   TABLE DATA           e   COPY public.classe_aluno (id_classe_al, aluno_id, classe_id, data_matricula, ano_letivo) FROM stdin;
    public          postgres    false    217   �p       t          0    17377    entity 
   TABLE DATA           �  COPY public.entity (tipo_sanguineo_id, sexo_id, raca_cor_id, parantesco_id, nome_logradouro_id, nivel_id, municipio_id, id_tipo_sanguineo, id_sexo, id_responsavel, id_resp_aluno, id_raca_cor, id_parentesco, id_nivel, id_mun, id_logradouro, id_esc, id_classe_al, id_classe, id_bairro, id_aluno_saude, id_aluno_end, id_aluno, escola_id, classe_id, bairro_id, aluno_id, acompanhamento_medico_desc, alergia_medicamento_desc, ano_letivo, cep, codigo_inep, complemento, cpf_aluno, cpf_resp, data_matricula, data_nascimento, deficiencia_desc, descricao_logradouro, descricao_nivel, descricao_parentesco, descricao_raca_cor, descricao_sexo, descricao_tipo_sang, doenca_desc, email, intolerancia_alimentar_desc, medicacao_continua_desc, nic, nis, nome_aluno, nome_bairro, nome_esc, nome_mae, nome_mun, nome_pai, nome_resp, numero, ponto_referencia, relatorio, responsavel_id, rg_aluno, rg_data_emissao, rg_orgao_expedidor, rg_resp, serie, telefone_aluno, telefone_resp, turma, uf_codigo, aluno_end_id) FROM stdin;
    public          postgres    false    231   �p       c          0    17024    escola 
   TABLE DATA           ?   COPY public.escola (id_esc, nome_esc, codigo_inep) FROM stdin;
    public          postgres    false    214   q       n          0    17129 	   municipio 
   TABLE DATA           @   COPY public.municipio (id_mun, nome_mun, uf_codigo) FROM stdin;
    public          postgres    false    225   �q       d          0    17029    nivel 
   TABLE DATA           :   COPY public.nivel (id_nivel, descricao_nivel) FROM stdin;
    public          postgres    false    215   dr       p          0    17139    nome_logradouro 
   TABLE DATA           Y   COPY public.nome_logradouro (id_logradouro, descricao_logradouro, bairro_id) FROM stdin;
    public          postgres    false    227   �r       l          0    17114 
   parentesco 
   TABLE DATA           I   COPY public.parentesco (id_parentesco, descricao_parentesco) FROM stdin;
    public          postgres    false    223   s       h          0    17074    raca_cor 
   TABLE DATA           C   COPY public.raca_cor (id_raca_cor, descricao_raca_cor) FROM stdin;
    public          postgres    false    219   �s       k          0    17099    responsavel 
   TABLE DATA           g   COPY public.responsavel (id_responsavel, nome_resp, cpf_resp, rg_resp, nic, telefone_resp) FROM stdin;
    public          postgres    false    222   3t       j          0    17094    responsavel_aluno 
   TABLE DATA           c   COPY public.responsavel_aluno (id_resp_aluno, aluno_id, responsavel_id, parantesco_id) FROM stdin;
    public          postgres    false    221   2u       i          0    17079    sexo 
   TABLE DATA           7   COPY public.sexo (id_sexo, descricao_sexo) FROM stdin;
    public          postgres    false    220   ju       r          0    17176    tipo_sanguineo 
   TABLE DATA           P   COPY public.tipo_sanguineo (id_tipo_sanguineo, descricao_tipo_sang) FROM stdin;
    public          postgres    false    229   �u       {           0    0    aluno_endereco_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.aluno_endereco_id_seq', 10, true);
          public          postgres    false    230            �           2606    17063    aluno aluno_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id_aluno);
 :   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_pkey;
       public            postgres    false    218            �           2606    17175    aluno_saude aluno_saude_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.aluno_saude
    ADD CONSTRAINT aluno_saude_pkey PRIMARY KEY (id_aluno_saude);
 F   ALTER TABLE ONLY public.aluno_saude DROP CONSTRAINT aluno_saude_pkey;
       public            postgres    false    228            �           2606    17138    bairro bairro_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT bairro_pkey PRIMARY KEY (id_bairro);
 <   ALTER TABLE ONLY public.bairro DROP CONSTRAINT bairro_pkey;
       public            postgres    false    226            �           2606    17056    classe_aluno classe_aluno_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.classe_aluno
    ADD CONSTRAINT classe_aluno_pkey PRIMARY KEY (id_classe_al);
 H   ALTER TABLE ONLY public.classe_aluno DROP CONSTRAINT classe_aluno_pkey;
       public            postgres    false    217            �           2606    17041    classe classe_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_pkey PRIMARY KEY (id_classe);
 <   ALTER TABLE ONLY public.classe DROP CONSTRAINT classe_pkey;
       public            postgres    false    216            �           2606    17383    entity entity_pkey 
   CONSTRAINT     �  ALTER TABLE ONLY public.entity
    ADD CONSTRAINT entity_pkey PRIMARY KEY (aluno_id, bairro_id, classe_id, escola_id, id_aluno, id_aluno_end, id_aluno_saude, id_bairro, id_classe, id_classe_al, id_esc, id_logradouro, id_mun, id_nivel, id_parentesco, id_raca_cor, id_resp_aluno, id_responsavel, id_sexo, id_tipo_sanguineo, municipio_id, nivel_id, nome_logradouro_id, parantesco_id, raca_cor_id, sexo_id, tipo_sanguineo_id);
 <   ALTER TABLE ONLY public.entity DROP CONSTRAINT entity_pkey;
       public            postgres    false    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231            �           2606    17028    escola escola_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.escola
    ADD CONSTRAINT escola_pkey PRIMARY KEY (id_esc);
 <   ALTER TABLE ONLY public.escola DROP CONSTRAINT escola_pkey;
       public            postgres    false    214            �           2606    17133    municipio municipio_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id_mun);
 B   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_pkey;
       public            postgres    false    225            �           2606    17033    nivel nivel_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.nivel
    ADD CONSTRAINT nivel_pkey PRIMARY KEY (id_nivel);
 :   ALTER TABLE ONLY public.nivel DROP CONSTRAINT nivel_pkey;
       public            postgres    false    215            �           2606    17143 $   nome_logradouro nome_logradouro_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.nome_logradouro
    ADD CONSTRAINT nome_logradouro_pkey PRIMARY KEY (id_logradouro);
 N   ALTER TABLE ONLY public.nome_logradouro DROP CONSTRAINT nome_logradouro_pkey;
       public            postgres    false    227            �           2606    17118    parentesco parentesco_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.parentesco
    ADD CONSTRAINT parentesco_pkey PRIMARY KEY (id_parentesco);
 D   ALTER TABLE ONLY public.parentesco DROP CONSTRAINT parentesco_pkey;
       public            postgres    false    223            �           2606    17078    raca_cor raca_cor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.raca_cor
    ADD CONSTRAINT raca_cor_pkey PRIMARY KEY (id_raca_cor);
 @   ALTER TABLE ONLY public.raca_cor DROP CONSTRAINT raca_cor_pkey;
       public            postgres    false    219            �           2606    17098 (   responsavel_aluno responsavel_aluno_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.responsavel_aluno
    ADD CONSTRAINT responsavel_aluno_pkey PRIMARY KEY (id_resp_aluno);
 R   ALTER TABLE ONLY public.responsavel_aluno DROP CONSTRAINT responsavel_aluno_pkey;
       public            postgres    false    221            �           2606    17103    responsavel responsavel_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.responsavel
    ADD CONSTRAINT responsavel_pkey PRIMARY KEY (id_responsavel);
 F   ALTER TABLE ONLY public.responsavel DROP CONSTRAINT responsavel_pkey;
       public            postgres    false    222            �           2606    17083    sexo sexo_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT sexo_pkey PRIMARY KEY (id_sexo);
 8   ALTER TABLE ONLY public.sexo DROP CONSTRAINT sexo_pkey;
       public            postgres    false    220            �           2606    17180 "   tipo_sanguineo tipo_sanguineo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.tipo_sanguineo
    ADD CONSTRAINT tipo_sanguineo_pkey PRIMARY KEY (id_tipo_sanguineo);
 L   ALTER TABLE ONLY public.tipo_sanguineo DROP CONSTRAINT tipo_sanguineo_pkey;
       public            postgres    false    229            �           2606    17064    classe_aluno aluno_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.classe_aluno
    ADD CONSTRAINT aluno_id FOREIGN KEY (aluno_id) REFERENCES public.aluno(id_aluno) NOT VALID;
 ?   ALTER TABLE ONLY public.classe_aluno DROP CONSTRAINT aluno_id;
       public          postgres    false    218    217    3246            �           2606    17104    responsavel_aluno aluno_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.responsavel_aluno
    ADD CONSTRAINT aluno_id FOREIGN KEY (aluno_id) REFERENCES public.aluno(id_aluno) NOT VALID;
 D   ALTER TABLE ONLY public.responsavel_aluno DROP CONSTRAINT aluno_id;
       public          postgres    false    3246    221    218            �           2606    17149    aluno_endereco aluno_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_endereco
    ADD CONSTRAINT aluno_id FOREIGN KEY (aluno_end_id) REFERENCES public.aluno(id_aluno) NOT VALID;
 A   ALTER TABLE ONLY public.aluno_endereco DROP CONSTRAINT aluno_id;
       public          postgres    false    218    3246    224            �           2606    17181    aluno_saude aluno_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_saude
    ADD CONSTRAINT aluno_id FOREIGN KEY (aluno_id) REFERENCES public.aluno(id_aluno) NOT VALID;
 >   ALTER TABLE ONLY public.aluno_saude DROP CONSTRAINT aluno_id;
       public          postgres    false    228    218    3246            �           2606    17144    nome_logradouro bairro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.nome_logradouro
    ADD CONSTRAINT bairro_id FOREIGN KEY (bairro_id) REFERENCES public.bairro(id_bairro);
 C   ALTER TABLE ONLY public.nome_logradouro DROP CONSTRAINT bairro_id;
       public          postgres    false    3260    227    226            �           2606    17154    aluno_endereco bairro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_endereco
    ADD CONSTRAINT bairro_id FOREIGN KEY (ale_bairro_id) REFERENCES public.bairro(id_bairro) NOT VALID;
 B   ALTER TABLE ONLY public.aluno_endereco DROP CONSTRAINT bairro_id;
       public          postgres    false    224    226    3260            �           2606    17069    classe_aluno classe_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.classe_aluno
    ADD CONSTRAINT classe_id FOREIGN KEY (classe_id) REFERENCES public.classe(id_classe) NOT VALID;
 @   ALTER TABLE ONLY public.classe_aluno DROP CONSTRAINT classe_id;
       public          postgres    false    216    217    3242            �           2606    17047    classe escola_id    FK CONSTRAINT     v   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT escola_id FOREIGN KEY (escola_id) REFERENCES public.escola(id_esc);
 :   ALTER TABLE ONLY public.classe DROP CONSTRAINT escola_id;
       public          postgres    false    216    214    3238            �           2606    17164    aluno_endereco municipio_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_endereco
    ADD CONSTRAINT municipio_id FOREIGN KEY (municipio_id) REFERENCES public.municipio(id_mun) NOT VALID;
 E   ALTER TABLE ONLY public.aluno_endereco DROP CONSTRAINT municipio_id;
       public          postgres    false    224    3258    225            �           2606    17042    classe nivel_id    FK CONSTRAINT     u   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT nivel_id FOREIGN KEY (nivel_id) REFERENCES public.nivel(id_nivel);
 9   ALTER TABLE ONLY public.classe DROP CONSTRAINT nivel_id;
       public          postgres    false    215    3240    216            �           2606    17159 !   aluno_endereco nome_logradouro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_endereco
    ADD CONSTRAINT nome_logradouro_id FOREIGN KEY (nome_logradouro_id) REFERENCES public.nome_logradouro(id_logradouro) NOT VALID;
 K   ALTER TABLE ONLY public.aluno_endereco DROP CONSTRAINT nome_logradouro_id;
       public          postgres    false    3262    227    224            �           2606    17119    responsavel_aluno parentesco_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.responsavel_aluno
    ADD CONSTRAINT parentesco_id FOREIGN KEY (parantesco_id) REFERENCES public.parentesco(id_parentesco) NOT VALID;
 I   ALTER TABLE ONLY public.responsavel_aluno DROP CONSTRAINT parentesco_id;
       public          postgres    false    223    221    3256            �           2606    17089    aluno raca_cor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT raca_cor_id FOREIGN KEY (raca_cor_id) REFERENCES public.raca_cor(id_raca_cor) NOT VALID;
 ;   ALTER TABLE ONLY public.aluno DROP CONSTRAINT raca_cor_id;
       public          postgres    false    3248    218    219            �           2606    17109     responsavel_aluno responsavel_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.responsavel_aluno
    ADD CONSTRAINT responsavel_id FOREIGN KEY (responsavel_id) REFERENCES public.responsavel(id_responsavel) NOT VALID;
 J   ALTER TABLE ONLY public.responsavel_aluno DROP CONSTRAINT responsavel_id;
       public          postgres    false    221    222    3254            �           2606    17084    aluno sexo_id    FK CONSTRAINT     z   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT sexo_id FOREIGN KEY (sexo_id) REFERENCES public.sexo(id_sexo) NOT VALID;
 7   ALTER TABLE ONLY public.aluno DROP CONSTRAINT sexo_id;
       public          postgres    false    220    218    3250            �           2606    17186    aluno_saude tipo_sanguineo_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_saude
    ADD CONSTRAINT tipo_sanguineo_id FOREIGN KEY (tipo_sanguineo_id) REFERENCES public.tipo_sanguineo(id_tipo_sanguineo) NOT VALID;
 G   ALTER TABLE ONLY public.aluno_saude DROP CONSTRAINT tipo_sanguineo_id;
       public          postgres    false    3266    229    228            g   J  x�]UInG]O�Ky�F��N�e����2@��YV�K過y� ���x����,ǽ����7ёwS����u�Cs��1v�ɖ������M9%�R���m�j%�r�+�܄���:͇<x�Gs߬}s��U��o����̘W�¶�HA8�d��帝���ηy���^��Pgelaɻ\���^�4f�����e�X�8��'������8�,yCJ�@�0n����]�C�}s����I \��Ke	#��nR���sN1�o~@c�3����}�v���\�a�+<�2�
J�6�85�ͤP��3�f��Ґ�ƾ|��}���}�ԇM�yh��f
��9u[P�+�N�`�U
�y��|J�M
a��y�Ɣ�c+�q���&o��>��� \�i�OdBUC����B�4���>�	�%qE�@���y�7���7	��<4o֓�׹����.k��
p%)(����W�͹��;��1�kY�.��y�!��h�l�#�����8"�
�NH9~��mO�\��
ţU�������W�]��J@|�*fm�9�i���~c�<+o$��}!�o>�9�������	��s������(Je���	��)_�������w�/����a�}"��;~_܃�F���SN�#��RBU�����r?�_�C���.��RL+��&r�lТ:dn��!�s�lA<	�Z��rr��(���4 �/��檟���ҭ�eiи�������K��8 �:|V
��s�y���R���H*�B�DXJ% +Yg\?�ж�W!�yi]���F������#�CHː6`v�����\���C�BĤ�Ը��c
�f�ܒPe�4���U$N �[�XkXń-oJ������W�O���~�~��q�0ʵ�Q��0���1~&_����.4�qC�����IES�P�46�Hq�b�vTŎ(	[Y� ��ީnf眪��A��ҖN�T+�j]l�k���% ��`��,��J ���j���]X�[azv"�,e�u��c�S��W��U���ͱ~;�����r�J�m	&�]�r*ݾ|��D�����K�sxީ��׋��?���      m   .  x�=P;n�0��S�
��4�F�&�5����0z�9@{_���$���%�� ��`,:'�B8�%�tɜ��os���n@��*��*aM�&��t͜���X ܀+i+b�B�M�Z3O��҈`]D-���a4́��Gc�r���pL�T�zO����r�Y�Ӑep�yZ:f�\O�(���yۏ��<t��yi�C�t]��*n$%�yF�P'R��PD2���
��~/;�x��%�}���g�����*��Hop{�F<�2w2%�J�~�x���\>���U�[���;��/i       q   �   x�uO1�0�ϏAMӦ��ĂXX�XU�mQ^��C�1\��B�%[���
����tў�2�����>�/ �cœ�IA	w���D)7���u�kCF '����br�w��J�P��{��g\|�*��1�V]S�F��Y�Ie�[��ƏS���
)jwD���O�      o   a   x�̫�0DQ��1$��������R|=Uל\'͈R����>&S�2�hr��V��ɢ-�Lj�ù���?���2����'*��щ>      e   \   x�E�;�0��>"�L���!9'�j+!/~R�8��`7:L�V;��?s&Ո$�ܐ�Ӹ�F��p�qrT�ܐ�"���>?���b�      f   O   x�-���0��.AqJEم���)Hy���M(1QY��#��AA(�<U��O��+�j,���B���������Wx�/0�8      t      x������ � �      c   �   x�%�?
�0����S���OG)�n.�&�@lJj�S�ыYp����בfO%f�B*m�C���Fqg�VBr���%3�y)a�� צ��	T��oS̬_?�+%��[�Ć<��Վ�Fq�p�����5\h���A?��e=n�SZ4�N��n)0:      n   �   x��1�@��O�	˂@�&T�Hk���E���l����$��T8���~as)�S:���X8r�P)p�K�l�Y�>,|�b����0+*�bO�N��R�K����0�48{�e.m�=B:����4��V.���-P      d   E   x�3���KK�+���2�t+�KI�M�+I��2��=�2%3�˄3������|.S��҂Ԣ��"�=... v��      p   �   x�=�=�0Fg�>R�Oˈ`��#��z�T7�03��H������E���V7Q�2��<�7�c�M�N5�k����b0�ٸqb��&]r3��͎5HGudm����p���k�V]`�%Ӏ}^6h�X�=+\�{?�GgW���/��t���/��������y��_��KT      l   H   x�3��=�8�ː3 1�˔3(�� ?���²�����.cNϢ�Ë���4�	�c��-�
@r3W� &�W      h   L   x�3��KM/��2�t*J�K��2�t�M,J���2�H,J��2���K9�6=5/�ˌӷ4'�$�˜ӿ��/F��� �>R      k   �   x�-�=N1��z|
��bь=��%%Q$$�4X���Zl�����a�4��wܧe�g}����I?��2W�E��#1��-l�hCbG/d�.�-U��:U���K����v�A"�t�8t�,<��$����s;^ʔ��(������A�F[�v����_KշKZ�m?_�-�Z�E4���?"#9!e`�NmHo�a�ei�����O`#���]��۳m��[6���(�~ ?�K�      j   (   x�3�4BS.CNCNNC. Bc.� �1�W� Z��      i   !   x�3�tK�������2��M,N.��c���� }C      r   4   x�3�t��2�t��2�t�&���\����\f�N�\�@A].N]�=... �$�     