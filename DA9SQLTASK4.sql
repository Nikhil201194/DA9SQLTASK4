select * from soldier


create table weapon(
	weapon_id int,
	weapon_name varchar,
	weapon_range int,
	id int ,
	foreign key (id ) references soldier (id) 
	)

select * from weapon

copy weapon from 'E:\DA9\SQL\SQLTASK4\soldier weapon.csv' delimiter ',' csv header

select * from weapon

---query

1) Distinct query 

select * from weapon

select distinct weapon_name from weapon
select distinct weapon_id from weapon

select * from weapon

2) where query

select * from weapon

select * from weapon where weapon_id = 10
select * from weapon where weapon_range = 21

select * from weapon

select * from weapon where weapon_name = 'sword' and id = 2

	select * from weapon

select * from weapon where weapon_range = 16 or weapon_id = 10

	select * from weapon

select * from weapon where not weapon_range = 9
 between query ---
select * from weapon where weapon_range >=10 and weapon_range <=20

---delete query


	select * from weapon
	
delete from weapon where weapon_range = 16

	select * from weapon

rollback

select * from weapon

---- 3) alter query

alter table weapon add column weapon_type varchar

select * from weapon

update weapon set weapon_type = PISTOL WHERE ID = 2


select * from weapon

alter table weapon drop weapon_type

select * from weapon

--- 4) In query

select * from weapon where id in( 3,2,5)

------ 5) constraint query

ALTER TABLE weapon
ADD CONSTRAINT check_weapon_range
check (weapon_range=19 )

alter table weapon
add constraint check_id
check (id not in ('a1', 'b1' ,'check') )
	

















