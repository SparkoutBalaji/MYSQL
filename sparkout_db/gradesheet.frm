TYPE=VIEW
query=select `s`.`id` AS `ID`,`s`.`name` AS `Name`,`g`.`g_name` AS `GroupName`,`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5` AS `Total`,(`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 AS `Average`,case when `m`.`M1` > 35 and `m`.`M2` > 35 and `m`.`M3` > 35 and `m`.`M4` > 35 and `m`.`M5` > 35 then \'PASS\' else \'FAIL\' end AS `RESULT`,case when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 90 then \'A+\' when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 85 then \'A\' when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 75 then \'B\' when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 65 then \'C\' else \'No GRADE\' end AS `GRADE` from ((`sparkout_db`.`students` `s` join `sparkout_db`.`groups` `g` on(`s`.`g_id` = `g`.`id`)) join `sparkout_db`.`marks` `m` on(`m`.`id` = `s`.`id`))
md5=4b217068714f3dda1772bd36afa0286c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001696310103337769
create-version=2
source=select s.id as ID, s.name as Name,g.g_name as GroupName,\n								(m.M1+m.M2+m.M3+m.M4+m.M5) as Total , \n								(m.M1+m.M2+m.M3+m.M4+m.M5)/5 as Average,\n								case\n									when m.M1 >35 and m.M2 >35 and m.M3 >35 and m.M4 >35 and m.M5 >35 then \'PASS\'\n									else \'FAIL\'\n									end as RESULT,\n								case\n									when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>90 then \'A+\'\n								    when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>85 then \'A\'\n									when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>75 then \'B\'\n									when (m.M1+m.M2+m.M3+m.M4+m.M5)/5>65 then \'C\'\n									else \'No GRADE\'\n								end as GRADE							\nfrom students s\ninner join groups g on s.g_id = g.id\ninner join marks m on m.id = s.id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `s`.`id` AS `ID`,`s`.`name` AS `Name`,`g`.`g_name` AS `GroupName`,`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5` AS `Total`,(`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 AS `Average`,case when `m`.`M1` > 35 and `m`.`M2` > 35 and `m`.`M3` > 35 and `m`.`M4` > 35 and `m`.`M5` > 35 then \'PASS\' else \'FAIL\' end AS `RESULT`,case when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 90 then \'A+\' when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 85 then \'A\' when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 75 then \'B\' when (`m`.`M1` + `m`.`M2` + `m`.`M3` + `m`.`M4` + `m`.`M5`) / 5 > 65 then \'C\' else \'No GRADE\' end AS `GRADE` from ((`sparkout_db`.`students` `s` join `sparkout_db`.`groups` `g` on(`s`.`g_id` = `g`.`id`)) join `sparkout_db`.`marks` `m` on(`m`.`id` = `s`.`id`))
mariadb-version=100428
