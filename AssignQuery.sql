CREATE DATABASE StudentsDb ON PRIMARY 
(NAME = 'Custs_Db', FILENAME = 'M:\Simplilearn\mphasis\Phase-2\day-1\Assign1\Student_Db.mdf',SIZE = 24MB , MAXSIZE = 32MB, FILEGROWTH = 8MB)
LOG ON
(NAME = 'Custs_log', FILENAME = 'M:\Simplilearn\mphasis\Phase-2\day-1\Assign1\Student_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS;

use StudentsDb
create table StudentRegistrations
(StudentId int not null,
CourseCode nvarchar(50) not null,
RegistrationDate date,
constraint pk_Student primary key (StudentId,CourseCode)
)

insert into StudentRegistrations values ('1','1122','5/5/2023')
insert into StudentRegistrations values (2,'1133','05/06/2023')
insert into StudentRegistrations(StudentId,CourseCode,RegistrationDate) values (2,'1122','05/06/2023'),(3,'1133','05/06/2023'),(4,'1123','05/06/2023')


select * from StudentRegistrations