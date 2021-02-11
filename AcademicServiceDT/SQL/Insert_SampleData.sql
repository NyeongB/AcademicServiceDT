INSERT INTO majors (major_code, major_name, college) VALUES('A-001', '컴퓨터공학과', '공과대학');
INSERT INTO majors (major_code, major_name, college) VALUES('A-002', '소프트웨어학과', '공과대학');
INSERT INTO majors (major_code, major_name, college) VALUES('A-003', '미디어학과', '공과대학');

INSERT INTO students  (student_id, major_code, password, email, student_name, birthday, phone, address, statement, entrance_date) VALUES ('20120001', 'A-001', '1111', 'genius9329@naver.com', '김병희', '1992-02-09', '01037410209', '서울시 서초구 방배동', '재학', '2012-03-02');
INSERT INTO students  (student_id, major_code, password, email, student_name, birthday, phone, address, statement, entrance_date) VALUES ('20150001', 'A-002', '2222', 'ehddkf0106@naver.com', '조동일', '1995-01-06', '01087237651', '서울시 은평구 역촌동', '재학', '2015-03-02');
INSERT INTO students  (student_id, major_code, password, email, student_name, birthday, phone, address, statement, entrance_date) VALUES ('20120002', 'A-003', '3333', 'cjfsud23@naver.com', '최철녕', '1993-10-13', '0109965957', '고양시 일산서구 일산2동', '재학', '2012-03-02');

INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-001', '컴퓨터개론', '전공필수', 3, '조병희', '월12화3', '엔코아301', 1);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-002', 'C언어프로그래밍', '전공필수', 3, '조철녕', '월45화4', '엔코아302', 1);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-003', '컴퓨터구조', '전공선택', 3, '최동일', '월56수6', '엔코아303', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-004', 'C++프로그래밍', '전공선택', 3, '김병희', '화78화4', '엔코아304', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-005', '이산수학', '전공선택', 3, '조동일', '수45화3', '엔코아101', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-006', '웹프로그래밍', '전공선택', 3, '최철녕', '금4화23', '엔코아102', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-007', '자료구조', '전공필수', 3, '임다운', '목45금7', '엔코아101', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-008', '시스템프로그래밍', '전공선택', 3, '김백준', '목12금3', '엔코아303', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-009', '운영체제', '전공필수', 3, '강창기', '수45화3', '엔코아302', 3);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-010', '데이터베이스', '전공선택', 3, '박지연', '월234', '엔코아105', 3);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-011', '윈도우프로그래밍', '전공선택', 3, '최철녕', '수123', '엔코아101', 3);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-012', '소프트웨어공학', '전공필수', 3, '조동일', '목567', '엔코아301', 3);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-013', 'JAVA프로그래밍', '전공선택', 3, '김백준', '수45화3', '엔코아101', 3);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-014', '프로젝트설계', '전공필수', 3, '임다운', '금456', '엔코아202', 4);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-015', '네트워크프로그래밍', '전공선택', 3, '이수연', '수34화2', '엔코아306', 4);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-016', '실용영어1', '교양필수', 3, '고현지', '금345', '엔코아205', 1);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-017', '실용영어2', '교양필수', 3, '김혜정', '목234', '엔코아105', 1);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-019', '통계학', '교양필수', 3, '강창기', '월234', '엔코아106', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-020', '영어회화', '교양필수', 3, '조동일', '수34목1', '엔코아105', 2);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-021', '농구', '교양선택', 1, '김백준', '금2', '대강당', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-022', '리조트경영과개발', '교양선택', 2, '최철녕', '목56', '엔코아201', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-023', '스크래치', '전공선택', 3, '조동일', '수45화3', '엔코아101', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-024', '교양합창', '전공선택', 3, '김병희', '금34월3', '엔코아303', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-025', '기초토익', '교양선택', 3, '이명관', '목234', '엔코아105', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-026', '토익심화', '교양선택', 3, '유지은', '금456', '엔코아102', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-027', '대화의기술', '교양선택', 3, '한명숙', '월23목5', '엔코아401', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-028', '생활속의심리학', '교양선택', 3, '김병희', 'OCU', 'OCU', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-029', '지중해문화산책', '교양선택', 3, '최철녕', 'OCU', 'OCU', 0);
INSERT INTO subjects  (subject_code, subject_name, category, credit, professor_name, subject_time, subject_place, subject_grade) VALUES ('B-030', '문학과상상력', '교양선택', 3, '조동일', 'OCU', '엔코아105', 0);


INSERT INTO registers(register_code, subject_code, student_id, score, year, semester) VALUES('C-001', 'B-001', '20120001', '100.00', '2020', '1');
INSERT INTO registers(register_code, subject_code, student_id, score, year, semester) VALUES('C-002', 'B-001', '20120002', '80.00', '2020', '2');
INSERT INTO registers(register_code, subject_code, student_id, score, year, semester) VALUES('C-003', 'B-001', '20150001', '90.00', '2020', '1');