-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-03-13 18:50:56 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativas (
    id_alternativa  NUMBER NOT NULL,
    descripcion     VARCHAR2(200),
    respuesta       CHAR(1),
    porncentaje     NUMBER
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id_alternativa );

CREATE TABLE alumnos (
    id_alumno      NUMBER NOT NULL,
    nombre_alumno  VARCHAR2(50),
    id_curso       NUMBER
);

ALTER TABLE alumnos ADD CONSTRAINT alumnos_pk PRIMARY KEY ( id_alumno );

CREATE TABLE autor (
    id_autor      NUMBER NOT NULL,
    nombre_autor  VARCHAR2(30)
);

ALTER TABLE autor ADD CONSTRAINT autor_pk PRIMARY KEY ( id_autor );

CREATE TABLE cursos (
    id_curso               NUMBER NOT NULL,
    nombre_curso           VARCHAR2(30),
    alumnos_id_alumno      NUMBER NOT NULL,
    id_programa            NUMBER,
    programas_id_programa  NUMBER NOT NULL
);

ALTER TABLE cursos ADD CONSTRAINT cursos_pk PRIMARY KEY ( id_curso );

CREATE TABLE preguntas (
    id_pregunta                  NUMBER NOT NULL,
    enunciado                    VARCHAR2(200),
    puntaje                      NUMBER,
    id_alternativa               NUMBER,
    alternativas_id_alternativa  NUMBER NOT NULL
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id_pregunta );

CREATE TABLE programas (
    id_programa      NUMBER NOT NULL,
    nombre_programa  VARCHAR2(150)
);

ALTER TABLE programas ADD CONSTRAINT programas_pk PRIMARY KEY ( id_programa );

CREATE TABLE resultados (
    id_resultado            NUMBER NOT NULL,
    puntaje_no_normalizado  REAL,
    puntaje_normalizado     REAL,
    id_test                 NUMBER,
    test_id_test            NUMBER NOT NULL
);

ALTER TABLE resultados ADD CONSTRAINT resultados_pk PRIMARY KEY ( id_resultado );

CREATE TABLE test (
    id_test                NUMBER NOT NULL,
    nombre_test            VARCHAR2(100),
    descripcion            VARCHAR2(150),
    unidad                 VARCHAR2(20),
    fecha_creacion         DATE,
    id_programa            NUMBER,
    id_pregunta            NUMBER,
    id_autor               NUMBER,
    id_alumno              NUMBER,
    alumnos_id_alumno      NUMBER NOT NULL,
    preguntas_id_pregunta  NUMBER NOT NULL,
    autor_id_autor         NUMBER NOT NULL
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( id_test );

ALTER TABLE cursos
    ADD CONSTRAINT cursos_alumnos_fk FOREIGN KEY ( alumnos_id_alumno )
        REFERENCES alumnos ( id_alumno );

ALTER TABLE cursos
    ADD CONSTRAINT cursos_programas_fk FOREIGN KEY ( programas_id_programa )
        REFERENCES programas ( id_programa );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_alternativas_fk FOREIGN KEY ( alternativas_id_alternativa )
        REFERENCES alternativas ( id_alternativa );

ALTER TABLE resultados
    ADD CONSTRAINT resultados_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test );

ALTER TABLE test
    ADD CONSTRAINT test_alumnos_fk FOREIGN KEY ( alumnos_id_alumno )
        REFERENCES alumnos ( id_alumno );

ALTER TABLE test
    ADD CONSTRAINT test_autor_fk FOREIGN KEY ( autor_id_autor )
        REFERENCES autor ( id_autor );

ALTER TABLE test
    ADD CONSTRAINT test_preguntas_fk FOREIGN KEY ( preguntas_id_pregunta )
        REFERENCES preguntas ( id_pregunta );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
