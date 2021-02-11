CREATE TABLE majors (major_code VARCHAR2(10) NOT NULL PRIMARY KEY, major_name VARCHAR2(30), college VARCHAR2(30));
CREATE TABLE students (student_id VARCHAR2(10) NOT NULL PRIMARY KEY, major_code  VARCHAR2(10), password VARCHAR2(100), email VARCHAR2(50), student_name VARCHAR2(20), birthday DATE, phone VARCHAR2(15), address VARCHAR2(100), statement VARCHAR2(10), entrance_date DATE, CONSTRAINT major_code FOREIGN KEY (major_code) REFERENCES majors(major_code));
CREATE TABLE subjects (subject_code VARCHAR2(10) NOT NULL PRIMARY KEY, subject_name VARCHAR2(30), category VARCHAR2(15), credit NUMBER(2), professor_name VARCHAR2(20), subject_time VARCHAR2(30), subject_place VARCHAR2(30), subject_grade NUMBER(1));
CREATE TABLE registers (register_code VARCHAR2(10) NOT NULL PRIMARY KEY, subject_code VARCHAR2(10), student_id VARCHAR2(10), score NUMBER(5,2), year NUMBER(4), semester VARCHAR2(20), CONSTRAINT subject_code FOREIGN KEY (subject_code) REFERENCES subjects(subject_code), CONSTRAINT dstudent_id FOREIGN KEY (student_id) REFERENCES students(student_id));

DROP TABLE majors;
DROP TABLE students;
DROP TABLE subjects;
DROP TABLE registers;