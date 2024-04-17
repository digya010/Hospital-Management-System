CREATE DATABASE hospital;
USE hospital;

CREATE TABLE patients
(
id INT auto_increment primary key,
name VARCHAR(255) NOT NULL,
age INT NOT NULL,
gender VARCHAR(10) NOT NULL
);
DROP TABLE patients;
CREATE TABLE DOCTORS
(
id INT auto_increment primary key,
name VARCHAR(255) NOT NULL,
specialization VARCHAR(255) NOT NULL
);
DROP TABLE DOCTORS;
CREATE TABLE APPOINTMENTS
(
id INT auto_increment primary key,
patient_id INT NOT NULL,
doctor_id INT NOT NULL,
appointment_date DATE,
FOREIGN KEY (patient_id) REFERENCES patients(id),
FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);
DROP TABLE APPOINTMENTS;

INSERT INTO DOCTORS(id,name,specialization) values (1,"Digvijay Gaikwad","Neuro surgeon"),(2,"Mrunal Pawar","Cardiologist"),(3,"Shivtej Dhumal","General Surgeon")
