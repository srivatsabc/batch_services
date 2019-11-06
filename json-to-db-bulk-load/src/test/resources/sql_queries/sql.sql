create table countries 
(
country_code varchar(2),
country_name varchar(100),
native varchar(100),
phone_code varchar(50),
continent_code varchar(2),
capital varchar(100),
currency varchar(100),
languages varchar(100),
created_by varchar(20),
created_date timestamp
)

insert into countries values (#[json://country/country_code],#[json://country/country_name],#[json://country/native],#[json://country/phone_code],#[json://country/continent_code],#[json://country/capital],#[json://country/currency],#[json://country/languages],#['bulk-load'],#[function:now])

select * from countries

drop table countries

insert into countries values ('AE', 'United Arab Emirates', 'دولة الإمارات العربية المتحدة', '971', 'AS', 'Abu Dhabi', 'AED', 'ar', 'bulk', CURRENT_TIMESTAMP())

 SHOW VARIABLES LIKE 'char%'
 
 show variables like 'character_set_client';
 
 ALTER TABLE countries CHANGE native VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL; 

ALTER DATABASE localdev CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER TABLE countries MODIFY COLUMN native VARCHAR(100)  
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
