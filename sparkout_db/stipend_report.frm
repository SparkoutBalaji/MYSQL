TYPE=VIEW
query=select `sparkout_db`.`internship_batch`.`name` AS `name`,`sparkout_db`.`internship_batch`.`role` AS `role`,case when `sparkout_db`.`internship_batch`.`role` = \'Php/Laravel\' then 5000 when `sparkout_db`.`internship_batch`.`role` = \'php developer\' then 5000 when `sparkout_db`.`internship_batch`.`role` = \'Node JS\' then 5001 when `sparkout_db`.`internship_batch`.`role` = \'Angular\' then 5002 end AS `stipend_Amt` from `sparkout_db`.`internship_batch`
md5=4b918ba7763d5ac7bd18f3cb8739255c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001695976763072901
create-version=2
source=select name, role,(case\n					when role="Php/Laravel" then 5000\n					when role="php developer" then 5000\n					when role="Node JS" then 5001\n					when role="Angular" then 5002\n					end) as stipend_Amt from internship_batch
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `sparkout_db`.`internship_batch`.`name` AS `name`,`sparkout_db`.`internship_batch`.`role` AS `role`,case when `sparkout_db`.`internship_batch`.`role` = \'Php/Laravel\' then 5000 when `sparkout_db`.`internship_batch`.`role` = \'php developer\' then 5000 when `sparkout_db`.`internship_batch`.`role` = \'Node JS\' then 5001 when `sparkout_db`.`internship_batch`.`role` = \'Angular\' then 5002 end AS `stipend_Amt` from `sparkout_db`.`internship_batch`
mariadb-version=100428
