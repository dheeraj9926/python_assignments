
use hospital_db;
create table Patients(p_id int primary key,
	name varchar(30),
    age int,
    gender varchar(20),
    city varchar(30),
    disease varchar(30));
show tables;
create table Appointments(a_id int primary key,
	p_id int, 
    Referred_doctor varchar(30),
    Appointment_date date,
    fees decimal(8,2));
show tables;

insert into Patients values
(1, 'Suresh', 35, 'male', 'Chennai', 'Asthma'),
(2, 'Lathika', 32, 'female', 'Chennai', 'fever'),
(3, 'Govind', 28, 'male', 'Chengalpattu', 'fever'),
(4, 'Hrithik', 27, 'male', 'Bengaluru', 'Fracture'),
(5, 'Prasanna', 37, 'female', 'Delhi', 'Meningitis');
select * from patients;

insert into appointments values
(101, 1, 'Dr. Avanthika', '2026-02-09', 10000),
(102, 2, 'Dr. Ananya', '2026-02-09', 8000),
(103, 3, 'Dr. Pavan', '2026-02-09', 11000),
(104, 4, 'Dr. Anjali kumari', '2026-02-09', 13000),
(105, 5, 'Dr. Pritam', '2026-02-09', 17000),
(106, 4, 'Dr. Avanthika', '2026-02-10', 10000);
select * from appointments;
show tables;

select * from patients;
select count(p_id) from patients;
drop tables patients, appointments; 

select * from patients;
select * from appointments;
drop table appointments;
select * from patients where city='chennai' and age>27;
select * from appointments where referred_doctor='dr. avanthika' and Appointment_date='2026-02-09';
select * from patients;
select * from patients where age=27 or disease='fever';
select * from appointments;
select * from appointments where referred_doctor='Dr. Pavan' or p_id=4;

select name, city from patients where not city='chennai';
select p_id, referred_doctor  from appointments where not (p_id=4 or referred_doctor='dr. Pritam');
select * from patients order by name desc;
select * from appointments order by referred_doctor desc;

select * from patients where name like '%th%';

select * from appointments where referred_doctor like '%a';

select * from patients where city='chennai';





 select * from appointments where p_id=4;













