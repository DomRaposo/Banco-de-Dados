create database universidades
default character set utf8
collate utf8_general_ci;

create table alunos (
	mat integer primary key ,
    nome varchar (50),
    endereco varchar (50),
    cidade varchar (50)
    ) default char set utf8;
   
   
     
   
create table disciplinas (
	cod_disc varchar(50) primary key,
    nome_disc varchar (50),
    carga_hor int 
    )default char set utf8;
    
    

    
    
    
create table professores (
	cod_prof int primary key,
    nome varchar (50),
    endereco varchar (80),
    cidade varchar (50)
    )default char set utf8;
    
CREATE TABLE if not exists anos (
    ano DATE PRIMARY KEY
) DEFAULT CHARSET=utf8;
    
    
    
    
CREATE TABLE Turma (
    cod_disc int,
    cod_turma int,
    cod_prof int,
    ano date,
    horario VARCHAR(50),
    foreign key (ano) references anos (ano)
    foreign key (COD_DISC) references Disciplinas(COD_DISC),
    foreign key (COD_PROF) references Professores(COD_PROF)
) DEFAULT CHARSET=utf8;

  
  
  
  
  
  
  
  
  
  ALTER TABLE turma
ADD CONSTRAINT fk_ano
FOREIGN KEY (ano) REFERENCES anos(ano);
  
  
CREATE TABLE Turma (
    COD_DISC varchar(50),
    COD_TURMA int,
    COD_PROF int,
    ANO date,
    horario varchar(50),
    FOREIGN KEY (COD_DISC) REFERENCES disciplinas (cod_disc),
    FOREIGN KEY (COD_PROF) REFERENCES professores (cod_prof)
) DEFAULT CHARSET=utf8;

ALTER TABLE Turma
ADD CONSTRAINT pk_cod_turma PRIMARY KEY (cod_turma);



CREATE TABLE historico (
    mat integer,
    cod_disc varchar(50),
    cod_turma int,
    cod_prof int,
    ano date,
    frequencia varchar(60),
    nota decimal(4,2),
    FOREIGN KEY (mat) REFERENCES alunos(mat),
    FOREIGN KEY (cod_disc) REFERENCES disciplinas(cod_disc),
    FOREIGN KEY (cod_turma) REFERENCES Turma(cod_turma),
    FOREIGN KEY (cod_prof) REFERENCES professores(cod_prof),
    FOREIGN KEY (ano) REFERENCES anos(ano)
) DEFAULT CHARSET=utf8;









insert into alunos (mat, nome, endereco, cidade) values
('2015010101', 'JOSE DE ALENCAR', 'RUA DAS ALMAS', 'NATAL'),
('2015010102', 'JOÃO JOSÉ', 'AVENIDA RUY CARNEIRO', 'JOÃO PESSOA'),
('2015010103', 'MARIA JOAQUINA', 'RUA CARROSSEL', 'RECIFE'),
('2015010104', 'MARIA DAS DORES', 'RUA DAS LADEIRAS', 'FORTALEZA'),
('2015010105', 'JOSUÉ CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL'),
('2015010106', 'JOSUÉLISSON CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL')
;


insert into disciplinas (cod_disc, nome_disc, carga_hor) values 
('BD', 'BANCO DE DADOS', '100'),
('POO', 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', '100'),
('WEB', 'AUTORIA WEB', '50'),
('ENG', 'ENGENHARIA DE SOFTWARE', '80');


insert into professores (cod_prof, nome, endereco, cidade) values
('212131', 'NICKERSON FERREIRA', 'RUA MANAÍRA', 'JOÃO PESSOA'),
('122135', 'ADORILSON BEZERRA', 'AVENIDA SALGADO FILHO', 'NATAL'),
('192011', 'DIEGO OLIVEIRA', 'AVENIDA ROBERTO FREIRE', 'NATAL'
);

INSERT INTO turma (cod_disc, cod_turma, cod_prof, ano, horario) VALUES 
('BD', 1, 212131, '2015-01-01', '11H-12H'),
('BD', 2, 212131, '2015-01-01', '13H-14H'),
('POO', 1, 192011, '2015-01-01', '08H-09H'),
('WEB', 1, 192011, '2015-01-01', '07H-08H'),
('ENG', 1, 122135, '2015-01-01', '10H-11H');


 
    