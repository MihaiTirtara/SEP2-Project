create table account (cpr varchar(11) primary key, login VARCHAR(50), password
VARCHAR(150));

create table account_data (cpr varchar(11) references account(cpr) primary key,
fname VARCHAR(50),
lname VARCHAR(50),
phone integer,
dob date,
email VARCHAR(50),
type varchar(1),
gender VARCHAR(1));

create table doctor_speciality (cpr varchar(11) references account(cpr) primary key,
speciality VARCHAR(50)
);


create table patient_data (cpr varchar(11) references account(cpr) primary key,
illnesses text, allergies text, height integer, weight integer,
  smoking boolean, vaccines text, familyIllnesses text, insurance boolean,
  pregnancy BOOLEAN
);

create table patient_prescription(cpr varchar(11) references account(cpr) primary key,
prescription text, appointments date, problem VARCHAR(200), recommendations text);


create table patientDoctor (patientCpr varchar(11) references account(cpr),
             doctorCpr varchar(11) references account(cpr), primary key(patientCpr,doctorCpr));

alter table account add constraint account_login_key UNIQUE (login);
