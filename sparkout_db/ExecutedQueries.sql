create database sparkout_db;		-- create database:

drop database sparkout_db;			-- drop for whole database remove from a database management not retriveable:

create database sparkout_db;		-- re-create same database:

use sparkout_db;					-- use keyword for select particular database then create,insert,update,delete:

create table interns(
	id int primary key not null auto_increment,
	name varchar(30) not null,
	dob date not null,
	email varchar(30) not null
);									-- create a table:

show tables;						-- show keyword shows tables list:

desc interns;						-- describe (or) desc for table structure view about datatypes, size:

alter table interns add gender varchar(10) not null
			after name;
		
select * from interns;	desc interns;	

alter table interns drop column dob;

insert into interns values(11,"Balaji N",'Male','balaji@gmail.com');
insert into interns values(12,"Prasanrth G",'Male','prasanth@gmail.com');
insert into interns values(13,"Sheik Dawoodu",'Male','sheik@gmail.com');
insert into interns values(14,"Hari Krishnan",'Male','harikrish@gmail.com');
insert into interns values(15,"Kathir",'Male','kathir@gmail.com');
insert into interns values(16,"Joael",'Male','jo@gmail.com');
insert into interns values(17,"Garunya",'Female','garunyaa@gmail.com');

alter table interns rename to internship_batch;

show tables;

select * from internship_batch; desc internship_batch;

alter table internship_batch add column role varchar(20) not null after email;

update internship_batch set role = "Php/Laravel" where id=11;
update internship_batch set role = "Php/Laravel" where id=12;
update internship_batch set role = "Angular" where id=13;
update internship_batch set role = "Php/Laravel" where id=14;
update internship_batch set role = "Php/Laravel" where id=15;
update internship_batch set role = "Node JS" where id=16;
update internship_batch set role = "Node JS" where id=17;

select * from internship_batch where role='Php/Laravel';

select name from internship_batch where role='Php/Laravel' and id=11;

select * from internship_batch;

insert into internship_batch values
(null,'Praveen N','Male','npraveen@gmail.com','php developer'),
(null,'Charan KS','Male','ks@gmail.com','Angular'),
(null,'Surendiran N','Male','suren@gmail.com','Node JS'),
(null,'Rakshana B','Female','rakshana.b@gmail.com','php/Laravel');		-- null for auto fillable row value:

select * from internship_batch where id in (11,22);

select * from internship_batch where id between 11 and 14;

select * from internship_batch where role like="%P%";

select * from internship_batch order by name desc;			-- order by for sorting a database by required field values in asc or desc key:

alter table internship_batch add column tl_id int not null after id;

update internship_batch set tl_id=1 where id in (18,22);

select * from internship_batch;

delete from internship_batch where id=19;

select * from internship_batch where role='Php/Laravel';

select sum(id) from internship_batch;			-- min/max/avg/round/sum:

select gender, count(id) as total_interns from internship_batch group by gender; -- group by is like a distinct:

create table attendance(id int primary key,adate date);

select * from internship_batch;

alter table internship_batch add column dob date after name;

update internship_batch  set dob = case id
						 when 11 then '2000-03-02'
						 when 12 then '1998-09-18'
						 when 13 then '2001-10-11'
						 when 14 then '2001-04-22'
						 when 15 then '2001-09-22'
						 when 16 then '2002-11-11'
						 when 17 then '1998-10-10'
						 when 18 then '1998-04-10'
						 when 20 then '1999-09-09'
						 when 21 then '1999-08-31'
						 when 22 then '2000-10-27' end;
						
select * from internship_batch where dob < '2000-01-01';


select distinct(role) as Domain,count(id) as interns_count from internship_batch group by role;

select role as interns,count(role) as total from internship_batch where role='php developer' ;
select role, count(if(role='Angular',1,null)) from internship_batch where role="Angular";

select * from internship_batch;

CREATE TABLE team_lead (
  TL_id INT(10) NOT NULL AUTO_INCREMENT,
  intern_id INT NOT NULL,
  TLname VARCHAR(30) NOT NULL,
  PRIMARY KEY (TL_id),
  CONSTRAINT FOREIGN KEY (intern_id) REFERENCES internship_batch (id)
);

drop table team_lead;

CREATE TABLE team_lead(
  TL_id INT(10) NOT NULL,
  intern_id INT NOT NULL,
  TLname VARCHAR(30) NOT NULL,
  CONSTRAINT FOREIGN KEY (intern_id) REFERENCES internship_batch (id)
);


insert into team_lead values(1,11,'Prasanth'),
					 (1,12,'Prasanth'),
					 (2,13,'Ruban'),
					 (1,14,'Prasanth'),
					 (1,15,'Prasanth'),
					 (3,16,'Aravind'),
					 (3,17,'Aravind'),
					 (1,18,'Prasanth'),
					 (2,20,'Ruban'),
					 (3,21,'Aravind'),
					 (1,22,'Prasanth');


SELECT i.id, i.name,  
       i.role, t.TLname
FROM internship_batch i
INNER JOIN team_lead t
ON i.tl_id = t.TL_id group by i.name order by i.id asc;

					select * from team_lead;
					select * from internship_batch;
		
create view stipend_report as							
select name, role,(case
					when role="Php/Laravel" then 5000
					when role="php developer" then 5000
					when role="Node JS" then 5001
					when role="Angular" then 5002
					end) as stipend_Amt from internship_batch;
				
update internship_batch set role="Php/Laravel" where role='php developer';			

show tables;
show full tables;

select * from stipend_report having stipend_Amt=5000;				-- having is used for view table column name:
			