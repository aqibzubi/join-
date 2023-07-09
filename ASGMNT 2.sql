create database joins;
use joins;

-- FIRST TABLE --
create table std_tble(
studentID int primary key ,
studentName varchar(35)
);
INSERT INTO std_tble  VALUES(1001, "Mary"),(1002, "Jane"),(1003,"Daniel"),(1004,"Jack"),(1005,"Harlod");
select * from std_tble;

-- SECOND TABLE --
create table course_tbl(
CourseID int ,
CourseName varchar(35),
studentID int 
);
alter table course_tbl add foreign key(studentID) references std_tble(studentID);
insert into course_tbl values (5001, "PHP",1004), (5002,"JAVA",1001),(5003,"ASP.NET" ,1001),(5004,"RUBY",1002);
SELECT * FROM course_tbl;

-- THIRD TABLE --
create table teachers_tblee (
TeacherID int ,
TeacherName varchar(35),
CourseID int 
 );
insert into teachers_tblee values (3001, "JILL",5003), (3002,"GREUL",5002),(3003,"JEKINS" ,5001),(3004,"POLO",5004);
select * from teachers_tblee;


select * from  std_tble JOIN course_tbl ON std_tble.studentID = course_tbl.studentID JOIN teachers_tblee ON course_tbl.CourseID = teachers_tblee.CourseID;

select std_tble.studentID, std_tble.studentName from std_tble JOIN course_tbl ON std_tble.studentID = course_tbl.studentID JOIN teachers_tblee ON course_tbl.CourseID = teachers_tblee.CourseID WHERE course_tbl.CourseName = 'ASP.NET';


-- 01 CROSS JOIN --
SELECT * FROM std_tble CROSS JOIN course_tbl;

-- 02 INNER JOIN --
select * from std_tble inner join course_tbl on std_tble.studentID = course_tbl.studentID;

-- 03 LEFT JOIN --
select * from std_tble left join course_tbl on std_tble.studentID = course_tbl.studentID;

-- 04 RIGHT JOIN --
select * from std_tble right join course_tbl on std_tble.studentID = course_tbl.studentID;