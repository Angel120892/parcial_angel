 CREATE TABLESPACE COURSES DATAFILE
 'C:\oraclexe\app\oracle\DBA\curso1.DBF' SIZE 50M
 
 CREATE PROFILE administrativo LIMIT
 SESSIONS_PER_USER               1
 IDLE_TIME                       25
 FAILED_LOGIN_ATTEMPTS           4;
 
CREATE USER Angel120892
IDENTIFIED BY 12345
DEFAULT TABLESPACE COURSES
QUOTA 30MB ON COURSES;

CREATE USER Angel120892
IDENTIFIED BY 12345
DEFAULT tablespace COURSES
QUOTA 30M ON COURSES
PROFILE administrativo;

DROP USER Angel120892;

SELECT * FROM SYS.DBA_USERS;

GRANT CREATE SESSION TO Angel120892;

GRANT DBA TO DBA_Angel120892;


CREATE TABLE COURSES (
  ID number NOT NULL,
  name varchar(255) NOT NULL,
  code varchar(255) NOT NULL,
  date_start  DATE NOT NULL,
  date_end DATE NOT NULL,
);


select * from all_tables;

COURSES(id, name, code, date_start, date_end) 

STUDENTS(id, first_name, last_name, date_of_birth, city, address) 

ATTENDANCE(id, student_id, course_id, attendance_date) 

ANSWERS(id, number_of_question, answer)
