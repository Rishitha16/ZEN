CREATE DATABASE my_database;
USE my_database;
CREATE TABLE users (student_id varchar(20), student_name varchar(25), student_email varchar(30));
CREATE TABLE codekata (codekata_id varchar(20) REFERENCES users(student_id), no_of_problems integer);
CREATE TABLE attendance (student_id varchar(20), attendance_percentage integer);
CREATE TABLE topics (student_id varchar(25), topic_id varchar(10), topic_name varchar(20));
CREATE TABLE company_drives (student_id varchar(20), company_name varchar(30));
CREATE TABLE mentors (student_id varchar(20), mentor_id varchar(10), mentor_name varchar(25), course_id varchar(20));
CREATE TABLE courses (course_id varchar(10), course_name varchar(30));
CREATE TABLE students_activated_courses(student_id varchar(20), course_id varchar(10));

INSERT INTO users (student_id, student_name, student_email) VALUES ('B01', 'Rishitha', 'rishitha@gmail.com'), ('B02', 'Arsheen', 'arsheen@gmail.com'), ('B03', 'Harshitha', 'harshitha@gmail.com'), ('B04', 'Ramesh', 'ramesh@gmail.com'), ('B05', 'Vijaya', 'vijaya@gmail.com');
INSERT INTO codekata (codekata_id, no_of_problems) VALUES ('B01', 11), ('B02', 10), ('B03', 5), ('B04', 20), ('B05', 25);
INSERT INTO attendance (student_id, attendance_percentage) VALUES ('B01', 90), ('B02', 80), ('B03', 96), ('B04', 99), ('B05', 100);
INSERT INTO topics (student_id, topic_id, topic_name) VALUES ('B01', 'T01', 'DBMS'), ('B02', 'T02', 'Data Structures'), ('B03', 'T03', 'OOPS'), ('B04', 'T04', 'Python'), ('B05', 'T05', 'C++');
INSERT INTO company_drives (student_id, company_name) VALUES ('B01', 'chubb'), ('B02', 'DXC'), ('B03', 'TCS'), ('B04', 'Cognizant'), ('B05', 'Modak');
INSERT INTO mentors (student_id, mentor_id, mentor_name, course_id) VALUES ('B01', 'M01', 'Narasimha', 'T01'), ('B02', 'M02', 'Ranjeeth', 'T02'), ('B03', 'M03', 'Kiran', 'T03'), ('B04', 'M04', 'Heerasingh', 'T04'), ('B05', 'M05', 'Vijay Kumar', 'T05');
INSERT INTO courses (course_id, course_name) VALUES ('C01', 'Artifical Intelligence'), ('C02', 'Machine Learning'), ('C03', 'Data Mining'), ('C04', 'IOT'), ('C05', 'Computer Science');
INSERT INTO students_activated_courses (student_id, course_id) VALUES ('B01', 'C03'), ('B02', 'C04'), ('B03', 'C01'), ('B04', 'C05'), ('B05', 'C02');

SELECT no_of_problems, codekata_id FROM codekata NATURAL JOIN users;

SELECT mentor_name FROM mentors;

SELECT student_id, student_name FROM users NATURAL JOIN mentors;
