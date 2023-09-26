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









