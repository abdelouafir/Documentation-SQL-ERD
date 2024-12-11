-- insert data a table patient     -- OK
INSERT INTO patient (firstName, lastName, gender, Data_of_brth, phone_number, email, adresse)
VALUES
('Alex', 'Johnson', 'male', '1990-07-15', '1234567890', 'alex.johnson@example.com', 'USA, Oled Talb Char Na'),
('Maria', 'Smith', 'femele', '1985-03-22', '9876543210', 'maria.smith@example.com', 'Canada, Maple Street 123'),
('John', 'Doe', 'male', '1992-11-08', '5678901234', 'john.doe@example.com', 'UK, London Bridge 45'),
('Sara', 'Connor', 'femele', '2000-09-10', '8901234567', 'sara.connor@example.com', 'USA, New York Central 12'),
('Liam', 'Brown', 'male', '1995-01-30', '3456789012', 'liam.brown@example.com', 'Australia, Sydney Harbour 88');

-- insert des valeux a departments
INSERT INTO departments(departmentName, location) VALUES     -- OK
('Cardiology', 'Building A, 3rd Floor'),
('Neurology', 'Building B, 2nd Floor'),
('Pediatrics', 'Building C, 1st Floor'),
('Oncology', 'Building D, 4th Floor'),
('Emergency', 'Building E, Ground Floor');

-- insert data a table admisson
INSERT INTO admissions (patientID,roomID,admissionDate, dishrgeDate) --atone
VALUES
(1,1,'2023-10-10', '2023-10-15'),
(2,2,'2023-11-01', '2023-11-10'),
(3,3,'2023-12-05', '2023-12-12'),
(4,4,'2024-01-10', '2024-01-20'),
(5,5,'2024-02-15', '2024-02-25'),
(6,6,'2024-03-01', '2024-03-10'),
(7,7,'2024-04-05', '2024-04-15'),
(8,8,'2024-05-10', '2024-05-20'),
(9,9,'2024-06-01', '2024-06-10'),
(10,10,'2024-07-15', '2024-07-25');

-- insert les valeux a table appointment -- OKY
INSERT INTO appointments (appointmentsDate, appointmentsTime,doctorID,patientID,reasion)
VALUES
('2024-12-10', '10:00:00',1,1,'Consultation générale'),
('2024-12-11', '14:30:00',2,2,'Contrôle de suivi'),
('2024-12-12', '09:00:00',3,3,'Examen de routine'),
('2024-12-13', '16:00:00',4,4,'Urgence médicale'),
('2024-12-14', '11:00:00',5,5,'Bilan de santé');

-- insert data tables roms
INSERT INTO ROOMS (roomNumber, roomType)          --OKY
VALUES
('101', 'geniral'),
('102', 'private'),
('201', 'ICU'),
('202', 'geniral'),
('301', 'private');

-- insert les valeux a table stafe  -- OK
INSERT INTO STAFE (firstName, lastName, jobTaitle, phoneNumber, email, departmentID) -- OK
VALUES
('John', 'Doe', 'Manager', '123-456-7890', 'john.doe@example.com',1),
('Jane', 'Smith', 'Developer', '987-654-3210', 'jane.smith@example.com',2),
('Emily', 'Johnson', 'Designer', '555-666-7777', 'emily.johnson@example.com',3),
('Michael', 'Brown', 'Analyst', '444-555-8888', 'michael.brown@example.com', 4),
('Sarah', 'Davis', 'HR', '333-444-9999', 'sarah.davis@example.com', 5);

--insert les valeu a table PRESECRIPTION   -- OK
INSERT INTO PRESCRIPTION (patientID, doctorID, medifficationID, PRESECRIPTIONData, dosageIntructions)
VALUES
(1, 1, 1, '2024-12-10', 'Take 1 tablet daily after meals'),
(2, 2, 2, '2024-12-09', 'Apply ointment twice a day'),
(3, 3, 3, '2024-12-08', 'Inject 5ml once every 12 hours'),
(4, 4, 4, '2024-12-07', 'Take 2 capsules before bedtime'),
(5, 5, 5, '2024-12-06', 'Drink 10ml syrup three times a day');

-- insert les valeu a tabl meddication   -- OK
INSERT INTO MEDICATION (medifficationName, doage)
VALUES
('Paracetamol', '500mg'),
('Ibuprofen', '200mg'),
('Amoxicillin', '250mg'),
('Cetirizine', '10mg'),
('Metformin', '850mg');

--insert les valeu a table DOCTORS   --OK
INSERT INTO DOCTORS (firstName, lastName, spisialisation, phoneNumber, email, departmentID)
VALUES
('John', 'Doe', 'Cardiology', '123-456-7890', 'john.doe@hospital.com', 1),
('Jane', 'Smith', 'Neurology', '987-654-3210', 'jane.smith@hospital.com', 2),
('Michael', 'Brown', 'Orthopedics', '555-666-7777', 'michael.brown@hospital.com',3),
('Emily', 'Johnson', 'Pediatrics', '444-555-8888', 'emily.johnson@hospital.com', 4),
('Sarah', 'Davis', 'Dermatology', '333-444-9999', 'sarah.davis@hospital.com', 5);
