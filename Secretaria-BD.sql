CREATE DATABASE SECRETARIA;

USE SECRETARIA;

CREATE TABLE ALUNO (
    CDALUNO INTEGER NOT NULL,
    NOME VARCHAR(40) ,
    NMATRICULA VARCHAR(15)
    );

CREATE TABLE CURSO (
    CDCURSO INTEGER NOT NULL,
    NOMECURSO VARCHAR(20),
    VALORCURSO NUMERIC(7,2));


CREATE TABLE DISCIPLINA (
    CDDISCIPLINA INTEGER NOT NULL,
    NOMEDISCIPLINA varchar(40),
        VALOR NUMERIC(7,2));


CREATE TABLE MATRICULA (
    CDMATRICULA INTEGER NOT NULL,
    CDCURSO INTEGER,
    CDALUNO INTEGER,
    CDSEMESTRE INTEGER,
    VALOR NUMERIC(7,2));


CREATE TABLE MATDISCIPLINA (
    CDMATDISCIPLINA INTEGER NOT NULL,
    CDMATRICULA INTEGER,
    CDDISCIPLINA INTEGER,
    MEDIA NUMERIC(7,2),
    STATUS CHAR(2) ,
    CDPROFESSOR INTEGER,
    VALOR NUMERIC(7,2));


CREATE TABLE PROFESSOR (
    CDPROFESSOR INTEGER NOT NULL,
    NOME VARCHAR(40)) ;

CREATE TABLE SEMESTRE (
    CDSEMESTRE INTEGER NOT NULL,
    ANO VARCHAR(15));

   
/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE ALUNO ADD PRIMARY KEY (CDALUNO);
ALTER TABLE CURSO ADD PRIMARY KEY (CDCURSO);
ALTER TABLE DISCIPLINA ADD PRIMARY KEY (CDDISCIPLINA);
ALTER TABLE MATDISCIPLINA ADD PRIMARY KEY (CDMATDISCIPLINA);
ALTER TABLE MATRICULA ADD PRIMARY KEY (CDMATRICULA);
ALTER TABLE PROFESSOR ADD PRIMARY KEY (CDPROFESSOR);
ALTER TABLE SEMESTRE ADD PRIMARY KEY (CDSEMESTRE);


/******************************************************************************/
/****                             Foreign keys                             ****/
/******************************************************************************/


ALTER TABLE MATDISCIPLINA ADD FOREIGN KEY (CDMATRICULA) REFERENCES MATRICULA (CDMATRICULA);
ALTER TABLE MATDISCIPLINA ADD FOREIGN KEY (CDDISCIPLINA) REFERENCES DISCIPLINA (CDDISCIPLINA);
ALTER TABLE MATDISCIPLINA ADD FOREIGN KEY (CDPROFESSOR) REFERENCES PROFESSOR (CDPROFESSOR);
ALTER TABLE MATRICULA ADD FOREIGN KEY (CDCURSO) REFERENCES CURSO (CDCURSO);
ALTER TABLE MATRICULA ADD FOREIGN KEY (CDSEMESTRE) REFERENCES SEMESTRE (CDSEMESTRE);
ALTER TABLE MATRICULA ADD FOREIGN KEY (CDALUNO) REFERENCES ALUNO (CDALUNO);

/********************************************************************************/
/****                   insert das tabelas                                   ****/
/********************************************************************************/

insert into ALUNO values (1, 'Antonio Bandeiras', '000102018'),
                         (2, 'Bill Gates',    '00002-2018'),
                         (3 ,'Steve Sniack', '00003-2018'),
                         (4, 'Linus Torvals','000404-2018');

                     
               



insert into CURSO values(10, 'ADS', 800.00),
                        (11, 'Quimica',900.00),
                        (12,  'Agronomia', 1000.00),
                        (13,  'Agroindustria', 1100.00);


insert into PROFESSOR values(20, 'REINALDA FERNANDES'),
                             (21, 'MARQUESA LIMA'),
                             (22,  'GEORGINA COTRIM'),
                             (23,  'PAULITA FERREIRA');



insert into DISCIPLINA values(30, 'ALGORITMO',500.00),
                             (31, 'BANCO DE DADOS', 600.00),
                             (32, 'TABD', 600.00),
                             (33, 'SO', 700.00),
			                 (34, 'SD', 700.00),
                             (35, 'IHM',700.00),
                             (36, 'ESTAGIO 1', 900.00),                             
                             (37, 'ESTAGIO I1', 900.00),                             
                             (38, 'ESTATISTICA', 900.00),                             
                             (39, 'PORTUGUES', 900.00),                             
                             (40, 'FISICA 1', 1000.00),                             
                             (41, 'ROBOTICA', 1000.00);


                             

INSERT INTO SEMESTRE VALUES(50,'2018.1'),
                           (51,'2018.2'),
                           (52,'2019.1'),
                           (53,'2019.2');




INSERT INTO MATRICULA values( 100, 10, 1, 50,300.00),
                            ( 101, 11, 2, 50,400.00),
                            ( 102, 12, 3, 50,500.00),
                            ( 103, 13, 4, 50,500.00),

                            ( 104, 10, 1, 51, 300.00),
                            ( 105, 11, 2, 51, 400.00),
                            ( 106, 12, 3, 51, 500.00),                         
                            ( 107, 13, 4, 51, 500.00),

                            ( 108, 10, 1, 52, 300.00),
                            ( 109, 11, 2, 52, 400.00),
                            ( 110, 12, 3, 53, 500.00),                         
                            ( 111, 13, 4, 53, 500.00);



    insert into MATDISCIPLINA(cdmatdisciplina,cdmatricula,cddisciplina, status,valor) 
           values( 1,100,30,'MT', 500.00),
                 ( 2,100,31,'MT', 600.00),
                 ( 3,100,32,'MT', 600.00),
                 ( 4,100,33,'MT', 500.00),

                 ( 5,101,30,'MT', 500.00),
                 ( 6,101,33,'MT', 350.00),
                 ( 7,101,34,'MT', 400.00),

                 ( 8,102,35,'MT', 350.00),
                 ( 9,102,35,'MT', 300.00),

                 (10,103,36,'MT', 660.00),
                 (11,104,37,'MT', 760.00),
                 (12,105,38,'MT', 900.00),
                 (13,105,39,'MT', 800.00);