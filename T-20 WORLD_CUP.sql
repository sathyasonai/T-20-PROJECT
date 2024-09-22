create database world_cup;
use world_cup;
create table T20_datas(
s_no int unique,
match_year int primary key,
host_location varchar(50),
winnor varchar(50),
runner varchar(50),
play_of_the_series varchar(50),
top_run_scorer varchar(50),
highest_wicket_taker varchar(50)
);
insert into T20_datas
value
(1,2007,'south africa','india','pakistan','shahid afridi','matthew hayden','umargul'),
(2,2009,'pakistan','sri lanka','england','tillakaratne dilshan','tillakaratne dilshan','umargul'),
(3,2010,'west indes','england','australia','kevin pieterseen','mahela jayawardene','dirk nannes'),
(4,2012,'sri lanka','west indes','sri lanka','shane watson','shane watson','ajantha mendis'),
(5,2014,'bangladesh','sri lanka','india','virat kohli','virat kohli','ahsan malik and imran tahir'),
(6,2016,'india','west indies','england','virat kohli','tamim ipbal','mohammad nabi'),
(7,2021,'oman & uae','australia','new zealand','davit warner','babarazam','wanindu hasaranga'),
(8,2022,'australia','england','pakistan','sam curran','virat kohli','wanindu hasaranga'),
(9,2024,'west indes & usa','india','south africa','jasprit bumrha','rahmanullah gurbaz','fazalhaq farooqi');
select * from T20_datas;

select * from T20_datas where winnor='west indes';
SELECT winnor ,COUNT(winnor) as winnor_count FROM T20_datas GROUP BY winnor HAVING COUNT(winnor)limit 1,1;

update T20_datas set winnor='west indes' where match_year=2016;