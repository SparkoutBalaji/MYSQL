use sparkout_db;

create table students(id int primary key auto_increment, name varchar(30) not null);
alter table students add column g_id int not null;

select * from students;

insert into students values(111,'Balaji',1),
							(112,'Charan KS',1),
							(113,'Surendiran N',1),
							(114,'Dharsan LM',2),
							(115,'Rishal',2),
							(116,'Mari Muthu',3),
							(117,'Akhil',1),
							(118,'Ratheash',2),
							(119,'Dinesh Kumar',1),
							(120,'Chithirai Selvan',3),
							(121,'Karthick',1),
							(122,'Swathi S',1),
							(123,'Malar',1);
							
create table groups(id int, g_name varchar(10));

insert into groups values(1,'IT'),
						 (2,'CS'),
						 (3,'BCA');
						 
create table marks(id int,G_id int,M1 int, M2 int,M3 int, M4 int, M5 int);

insert into marks values(111,1,96,88,76,89,94),
						(112,1,90,92,80,76,89),
						(113,1,88,80,89,79,89),
						(114,2,90,88,45,96,70),
						(115,2,80,69,55,49,70),
						(116,3,80,80,79,80,69),
						(117,1,65,71,49,58,91),
						(118,2,60,61,68,67,80),
						(119,1,68,65,71,49,51),
						(120,3,80,70,55,41,52),
						(121,1,45,47,68,53,50),
						(122,1,40,41,48,49,50),
						(123,1,55,59,62,79,81);

create view gradesheet as
select s.id as ID, s.name as Name,g.g_name as GroupName,
								(m.M1+m.M2+m.M3+m.M4+m.M5) as Total , 
								(m.M1+m.M2+m.M3+m.M4+m.M5)/5 as Average,
								case
									when m.M1 >35 and m.M2 >35 and m.M3 >35 and m.M4 >35 and m.M5 >35 then 'PASS'
									else 'FAIL'
									end as RESULT,
								case
									when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>90 then 'A+'
								    when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>85 then 'A'
									when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>75 then 'B'
									when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>65 then 'C'
									else 'No GRADE'
								end as GRADE							
from students s
inner join groups g on s.g_id = g.id
inner join marks m on m.id = s.id;

show full tables;

select * from gradesheet having GRADE='A';
