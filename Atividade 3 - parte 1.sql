INSERT INTO tipo_quarto
(id,descricao,valor_diario)
VALUES
(1,"Apartamento",900.00),
(2,"Duplo",500.00),
(3,"Enfermaria",350.00);

INSERT INTO convenio
(id,convenio_nome,carencia,cnpj)
VALUES
(1,"Bradesco","2 semanas",58139897000119),
(2,"Intermédica","1 semana",88021716000116),
(3,"Sulamerica","2 semanas",62892288000103),
(4,"Cruz Azul","3 semanas",39185552000157);

INSERT INTO especialidade
(id,especialidade_nome)
VALUES
(1,"Pediatria"),
(2,"Clínica Geral"),
(3,"Gastroenterologia"),
(4,"Dermatologia"),
(5,"Ginecologia"),
(6,"Nefrologia"),
(7,"Ortopedia");

INSERT INTO quarto
(id, quartoNum,id_tipo)
VALUES
(1,1,1),
(2,2,1),
(3,3,2),
(4,4,2),
(5,5,3),
(6,6,3);

INSERT INTO categoria_med
(id,categoria_nome)
VALUES
(1,"Generalista"),
(2,"Especialista"),
(3,"Residente");

ALTER TABLE pacientes
DROP COLUMN telefone;

ALTER TABLE pacientes
ADD telefone varchar(20);

INSERT INTO pacientes
(id,rg,cpf,nascimento,nome,telefone,sexo,endereco,email,convenio_id,carteirinha)
VALUES
(1,485181770,21096376849,19840415,"Bento Erick da Cruz",994594560,"Masculino","Avenida Ramalho Ortigão, 554","bento_erick_dacruz@gmail.com",null,null),
(2,310716287,50429672810,19440803,"Kevin Luís Iago Nascimento",991463598,"Masculino","Rua Catarina Braida, 857","kevin.luis.nascimento@predialnet.com.br",3,158946),
(3,230222821,37270435804,19810815,"Caleb Murilo Breno Araújo",991413252,"Masculino","Rua Anthêmios de Tralles, 376","calebmuriloaraujo@dcabr.org.br",1,5896347),
(4,350603789,19299068895,20010223,"Sophia Ana Josefa Gonçalves",995022898,"Feminino","Rua Cio da Terra, 645","sophia_goncalves@lta-am.com.br",null,null),
(5,299475505,24880893897,19840706,"Luciana Jennifer Sophia Silva",998090629,"Feminino","Rua Colônia Sarmiento, 638","luciana.jennifer.silva@esctech.com.br",2,8896378),
(6,442783218,53491398860,19930902,"Gabriela Alessandra da Silva",993314266,"Feminino","Rua Leonor de Castro Fernandes Beraldo, 953","gabriela-dasilva70@s2solucoes.com.br",1,15978634),
(7,135865293,21096376849,19660306,"Ricardo Sebastião Lopes",994712593,"Masculino","Rua Manoel Petisco, 342","lopes90@plenamenterh.com.br",4,6974328),
(8,460813481,48745590850,19430623,"Caroline Manuela Ayla Bernardes",911111111,"Feminino","Rua Bennet, 559","caroline-bernardes82@infonet.com.br",4,3058944),
(9,441762700,53675645851,19790615,"Roberto Kaique Melo",946218788,"Masculino","Rua Pedro Traversari, 687","roberto.kaique.melo@email.com",null,null),
(10,143083260,66780082864,20020501,"Esther Sophia Sales",995472231,"Feminino","Rua Manuel Cardoso, 664","esther_sales@fepextrusao.com.br",null,null),
(11,306324829,87263277832,19630211,"Renato Cauê da Paz",9741852963,"Masculino","Rua Ilhéus, 748","renatodapaz@uolinc.com",1,4785612),
(12,365927211,70214315894,19800820,"Vitor Felipe Anthony dos Santos",923697461,"Masculino","Rua Carijós, 281","vitor-dossantos70@fictor.com.br",null,null),
(13,499092648,02833976836,19540321,"Nicole Sônia Rezende",974689522,"Feminino","Rua Professor Ladislau Peter, 947","nicole-rezende79@lojasrayton.com",2,7462389),
(14,117342361,87573265840,19910407,"Benedita Betina Monteiro",997994641,"Feminino","Avenida Santo Amaro, 997","benedita_monteiro@bmalaw.com.br",null,null),
(15,264792427,51777024803,20121110,"Renan Martin Edson Alves",9875588423,"Masculino","Avenida São João, 128","renanmartinalves@eguia.com.br",1,9999875);

ALTER TABLE pacientes
DROP COLUMN pacientescol;

ALTER TABLE pacientes
DROP COLUMN pacientescol1;

ALTER TABLE medicos
MODIFY telefone varchar(20);

INSERT INTO medicos
(id,nome,nascimento,cpf,crm,categoria_id,especialidade_id,telefone,endereco)
VALUES
(1,"Raimundo Vinicius Gabriel Peixoto",19920315,09402972803,320754,3,2,988120393,"Avenida Aricanduva, 773"),
(2,"Nina Elza Duarte",19901201,13901081801,271379,2,1,992621783,"Rua Alexandre Petta, 590"),
(3,"Louise Aurora Marlene da Rocha",19940303,15358480811,178304,3,5,988600937,"Rua Carlos de Sousa Nazaré, 604"),
(4,"Catarina Isis Drumond",19920527,30392029871,261142,3,3,999495101,"Rua Berta, 396"),
(5,"Geraldo Danilo Silva",19800824,95140879840,204171,2,2,994194844,"Alameda Santos, 108"),
(6,"Carolina Beatriz Castro",19920108,47563465880,193628,2,6,991891769,"Padre José de Oliveira Rolim, 723"),
(7,"Iago Benjamin Santos",19890412,78368703832,505405,3,7,996065411,"Rua José Paulino, 223"),
(8,"Josefa Isadora Adriana Bernardes",19950113,52607661803,355587,3,4,995140239,"Rua Cristóvão Lopes, 875"),
(9,"Laís Ester Figueiredo",19930902,18742261805,462151,3,1,984059720,"Rua Jarbas de Barros Galvão, 714"),
(10,"Lucca Antonio Raul Nunes",19920720,92455357899,139791,1,2,981857403,"Rua Alto Araguaia, 83");


INSERT INTO consulta
(id,paciente_id,medico_id,especialidade_id,categoria_id,data,hora,valor,convenio_id,carteirinha)
VALUES
(1,15,2,1,2,20190512,150000,150.00,1,9999875),
(2,1,5,2,2,20160205,093000,120.00,null,null),
(3,4,8,4,3,20170128,110000,200.00,null,null),
(4,8,4,3,3,20201110,173000,180.00,4,3058944),
(5,3,7,7,3,20150904,110000,180.00,1,5896347),
(6,14,3,5,3,20201202,100000,180.00,null,null),
(7,6,6,6,2,20180405,140000,200.00,1,15978634),
(8,2,6,6,2,20190320,093000,200.00,3,158946),
(9,11,4,3,3,20170607,103000,180.00,1,4785612),
(10,1,5,2,1,20191002,113000,120.00,null,null),
(11,13,1,2,3,20210310,103000,150.00,2,8896378),
(12,5,5,2,2,20160401,093000,120.00,2,7462389),
(13,12,7,7,3,20161108,090000,180.00,null,null),
(14,09,10,2,1,20180409,143000,120.00,null,null),
(15,4,8,4,3,20210802,133000,200.00,null,null),
(16,7,7,7,3,20190115,170000,180.00,4,6974328),
(17,13,5,2,2,20201201,183000,120.00,2,7462389),
(18,1,4,3,3,20210901,150000,180.00,null,null),
(19,15,2,1,2,20201201,103000,150.00,1,9999875),
(20,5,8,4,3,20211005,150000,200.00,2,7462389);


INSERT INTO receitas
(id,consulta_id,paciente_id,medico_id,medicamento,quantidade,duracao_dias,observacoes)
VALUES
(1,1,15,2,"Dipirona, polaramine",1,5,"Dipirona em caso de febre"),
(2,7,6,6,"Amoxicilina, Dipirona",2,7,"Dipirona se tiver febre"),
(3,6,14,3,"Ibuprofeno, Ponstan",2,5,"Ponstan caso tiver cólica"),
(4,4,8,4,"Ursacol, Dramin, Omeprazol",2,7,"Dramin caso sinta enjôo"),
(5,20,5,8,"Ácido salicílico gel, Allegra",1,10,"Usar protetor solar"),
(6,16,7,7,"Nisulid, Dorflex",2,7,"Repouso por 4 dias"),
(7,10,1,5,"Histamin, Rinosoro Jet",2,5,"Retornar ao consultório ao final do tratamento"),
(8,19,15,2,"Prednisona, Cefalexina, Omeprazol",2,7,"Administrar Omeprazol antes da Cefalexina"),
(9,2,1,5,"Azitromicina, Loratadina",2,5,"Se afastar das atividades por 7 dias"),
(10,13,12,7,"Miosan, Cetoprofeno",2,7,"Fazer repouso");

UPDATE
consulta
SET
receita_id = 1
WHERE
id =  1;

UPDATE
consulta
SET
receita_id = 2
WHERE
id =  7;

UPDATE
consulta
SET
receita_id = 3
WHERE
id =  6;

UPDATE
consulta
SET
receita_id = 4
WHERE
id =  4;

UPDATE
consulta
SET
receita_id = 5
WHERE
id =  20;

UPDATE
consulta
SET
receita_id = 6
WHERE
id =  16;

UPDATE
consulta
SET
receita_id = 7
WHERE
id =  10;

UPDATE
consulta
SET
receita_id = 8
WHERE
id =  19;

UPDATE
consulta
SET
receita_id = 9
WHERE
id =  2;

UPDATE
consulta
SET
receita_id = 10
WHERE
id =  13;

INSERT INTO enfermagem
(id,nome,cpf,cre)
VALUES
(1,"Bruno das Neves",06546435390,20197),
(2,"Eliane Juliana Moura",20194651592,44622),
(3,"Mariane Emanuelly Dias",08339126660,39944),
(4,"César Daniel Viana",99151227649,32677),
(5,"Cauã Ian Breno Melo",33868552707,45718),
(6,"Caio Raimundo Novaes",28315538306,12512),
(7,"Sandra Lúcia da Mata",99659744110,49332),
(8,"Bianca Louise Ramos",82659521638,45778),
(9,"Nelson Francisco Pereira",74109655250,29703),
(10,"Murilo Ruan Breno Aparício",59822460856,26494);

ALTER TABLE internacao
ADD COLUMN 	 INT;

INSERT INTO internacao
(id,data_entrada,data_prev_alta,data_alta,procedimentos,id_quarto,id_enfermagem,id_enfermagem2,id_paciente,id_medico)
VALUES
(1,20150503,20150508,20150512,"Inalação, aspiração,coleta de sangue",5,1,2,4,5),
(2,20180425,20180501,20180510,"Hemodiálise, coleta de urina, coleta de sangue",1,3,7,13,6),
(3,20200106,20200110,20200110,"Administração de medicação",4,4,6,15,1),
(4,20190815,20190820,20190821,"Ultrassonografia, coleta de sangue, tomografia",2,5,10,4,3),
(5,20180801,20180805,20180808,"Tomografia, coleta de urina, coleta de sangue, inalação",2,9,1,13,6),
(6,20211102,20211108,20211106,"Inalação, coleta de sangue",3,8,10,15,1),
(7,20211205,20211210,20211210,"Fisioterapia, radriografia, tomografia",6,3,2,13,7);