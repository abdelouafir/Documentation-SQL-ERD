CREATE TABLE PATIENT(
    patientID INT(10) PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    gender VARCHAR(10) CHECK (gender IN ('male','femele','other')),
    Data_of_brth DATE ,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    adresse VARCHAR(255) 
);
CREATE TABLE ROOMS(
   roomID int(11) PRIMARY KEY,
   roomNumber VARCHAR(10),
   roomType VARCHAR(11) CHECK (roomType IN ('geniral','private','ICU'))
);

CREATE TABLE DEPARTMENTS(
    departmentID INT(11) PRIMARY KEY,
    departmentName VARCHAR(51),
    location VARCHAR(100)
);
CREATE TABLE DOCTORS(
    doctorID int(11) PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    spisialisation VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    departmentID INT(11),
    FOREIGN KEY (departmentID) REFERENCES DEPARTMENTS(departmentID)
);
CREATE TABLE MEDICATION(
     medifficationID INT(11) PRIMARY KEY,
     medifficationName VARCHAR(100),
     doage VARCHAR(50)
);

CREATE TABLE ADMISSIONS(
    admisionID INT(11) PRIMARY KEY,
    patientID INT(11),
    roomID int(11),
    admissionDate DATE,
    dishrgeDate DATE,
    FOREIGN KEY (patientID) REFERENCES PATIENT(patientID),
    FOREIGN KEY (roomID) REFERENCES ROOMS(roomID)
);
CREATE TABLE APPOINTMENTS(
    appointmentsID INT(11) PRIMARY KEY,
    appointmentsDate DATE,
    appointmentsTime TIME,
    doctorID int(11),
    patientID INT(10),
    reasion VARCHAR(255),
    FOREIGN KEY (doctorID) REFERENCES DOCTORS(doctorID),
    FOREIGN KEY (patientID) REFERENCES PATIENT(patientID)
);
CREATE TABLE PRESECRIPTION(
    PRESECRIPTIONID INT(11) PRIMARY KEY,
    patientID INT(10),
    doctorID int(11),
    medifficationID INT(11),
    PRESECRIPTIONData DATE,
    dosageIntructions VARCHAR(255),
    FOREIGN KEY (patientID) REFERENCES PATIENT(patientID),
    FOREIGN KEY (doctorID) REFERENCES DOCTORS(doctorID),
    FOREIGN KEY (medifficationID) REFERENCES MEDICATION(medifficationID)
);


CREATE TABLE STAFE(
    stafID int(52) PRIMARY KEY,
    firstName  VARCHAR(11),
    lastname VARCHAR(11),
    jobTaitle VARCHAR(50),
    phoneNumber VARCHAR(15),
    email VARCHAR(100),
    departmentID INT(11),
    FOREIGN KEY (departmentID) REFERENCES DEPARTMENTS(departmentID)
);
