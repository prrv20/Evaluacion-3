--Insertar Datos en la Tabla autor
insert into autor(nombre_autor)VALUES('Juan Cardenas');
insert into autor(nombre_autor)VALUES('José Luján');
insert into autor(nombre_autor)VALUES('Jaime Palacios');
insert into autor(nombre_autor)VALUES('Carlos Zuluoaga');
insert into autor(nombre_autor)VALUES('Carmen Valladares');

--Insertar en Tabla Programas
insert into programas(nombre_programa)Values('Programación FullStack Java Trainnie');
insert into programas(nombre_programa)Values('Programación Android');

--Insertando en la Tabla Cursos
insert into cursos(nombre_curso, programas_id_programa)values('0025 Providencia',  1);
insert into cursos(nombre_curso, programas_id_programa)values('0021 Providencia',  1);
insert into cursos(nombre_curso, programas_id_programa)values('0023 Providencia',  1);
insert into cursos(nombre_curso, programas_id_programa)values('0020 Rancagua',  1);
insert into cursos(nombre_curso, programas_id_programa)values('0018 Valparaiso',  1);

--Insertando en la Tabla Alumnos
insert into alumnos(nombre_alumno,id_curso)values('Jose Camacaro', 1);
insert into alumnos(nombre_alumno,id_curso)values('Juan Camacho', 1);
insert into alumnos(nombre_alumno,id_curso)values('Magaly Alvares', 1);
insert into alumnos(nombre_alumno,id_curso)values('Hector Alvarado', 1);
insert into alumnos(nombre_alumno,id_curso)values('Marcos Caldera', 1);
insert into alumnos(nombre_alumno,id_curso)values('Karla Montesinos', 1);
insert into alumnos(nombre_alumno,id_curso)values('Claudia Montero', 1);
insert into alumnos(nombre_alumno,id_curso)values('Carolina Marchán', 1);
insert into alumnos(nombre_alumno,id_curso)values('Yenny Zambrano', 1);
insert into alumnos(nombre_alumno,id_curso)values('Carlos Fonseca', 1);

insert into alumnos(nombre_alumno,id_curso)values('Maria Rivero', 3);
insert into alumnos(nombre_alumno,id_curso)values('Karina Rodriguez', 3);
insert into alumnos(nombre_alumno,id_curso)values('Willian Alvarado', 3);
insert into alumnos(nombre_alumno,id_curso)values('Henry Cortéz', 3);
insert into alumnos(nombre_alumno,id_curso)values('Flor Vargas', 3);
insert into alumnos(nombre_alumno,id_curso)values('Giovanni Conde', 3);
insert into alumnos(nombre_alumno,id_curso)values('Claudio Materán', 3);
insert into alumnos(nombre_alumno,id_curso)values('Irving Yajure', 3);
insert into alumnos(nombre_alumno,id_curso)values('Yesica Zamora', 3);
insert into alumnos(nombre_alumno,id_curso)values('Camila Araujo', 3);

--Insertar en la Tabla Alternativa
insert into alternativas(descripcion,respuesta,porcentaje)values('Es un concepto similar al de array','n',0);
insert into alternativas(descripcion,respuesta,porcentaje)values('Es un tipo particular de variable', 'n',0);
insert into alternativas(descripcion,respuesta,porcentaje)values('Es un modelo o plantilla a partir de la cual creamos objetos', 's',50);
insert into alternativas(descripcion,respuesta,porcentaje)values('es un modelo que define un conjunto de variables y métodos', 's',50);