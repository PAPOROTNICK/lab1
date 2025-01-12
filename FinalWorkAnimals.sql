CREATE database FriendsOfHumans;
use FriendsOfhumans;
create table Animals (
id INT auto_increment primary key,
name varchar(255),
type varchar(255),
birth_date date);

create table PetAnimals (
id INT auto_increment primary key,
name varchar(255),
type enum('Dog','Cat','Hamster'),
birth_date date);

insert into PetAnimals (name,type,birh_date) values
('max','Cat','2024-04-21'),
('Bella','Dog','2025-01-10'),
('jonh','Hamster','2024-03-15');

create table PackAnimals (
id INT auto_increment primary key,
name varchar(255),
type enum('Horse','Camel','Donkey'),
birth_date date);

insert into PetAnimals (name,type,birh_date) values
('karl','Horse','2024-00-20'),
('Bilie','Camel','2025-11-10'),
('karl','Donkey','2022-06-20');

delete from PacklAnimals where type = 'Camel';
create table HorsesAndDonkeys As select * from PackAnimals where type in ('Horse','Donkey');

create table YoungAnimals as select*, timestampdiff(Year,brith_date,Curdate()) between 1 and 3;

create table AllAnimals as select 'pet' as category, * from Pet animals Union select 'Pack' as category,* from PackAnimals;






-- Удаление верблюдов
DELETE FROM Camels;

-- Создание объединённой таблицы
CREATE TABLE HorsesAndDonkeys AS
SELECT name, birth_date, 'Horse' AS animal_type FROM Horses
UNION ALL
SELECT name, birth_date, 'Donkey' AS animal_type FROM Donkeys;






CREATE TABLE YoungAnimals AS
SELECT 
    name,
    animal_type,
    birth_date,
    DATE_PART('year', AGE(birth_date)) * 12 + DATE_PART('month', AGE(birth_date)) AS age_in_months
FROM (
    SELECT name, birth_date, 'Cat' AS animal_type FROM Cats
    UNION ALL
    SELECT name, birth_date, 'Dog' AS animal_type FROM Dogs
    UNION ALL
    SELECT name, birth_date, 'Hamster' AS animal_type FROM Hamsters
    UNION ALL
    SELECT name, birth_date, 'Horse' AS animal_type FROM Horses
    UNION ALL
    SELECT name, birth_date, 'Donkey' AS animal_type FROM Donkeys
) AS AllAnimals
WHERE AGE(birth_date) BETWEEN INTERVAL '1 year' AND INTERVAL '3 years';




CREATE TABLE AllAnimals AS
SELECT id, name, 'Cat' AS origin_table, birth_date FROM Cats
UNION ALL
SELECT id, name, 'Dog' AS origin_table, birth_date FROM Dogs
UNION ALL
SELECT id, name, 'Hamster' AS origin_table, birth_date FROM Hamsters
UNION ALL
SELECT id, name, 'Horse' AS origin_table, birth_date FROM Horses


UNION ALL
SELECT id, name, 'Donkey' AS origin_table, birth_date FROM Donkeys
UNION ALL
SELECT id, name, 'Camel' AS origin_table, birth_date FROM Camels;









CREATE database FriendsOfHumans;
use FriendsOfhumans;
create table Animals (
id INT auto_increment primary key,
name varchar(255),
type varchar(255),
birth_date date);

create table PetAnimals (
id INT auto_increment primary key,
name varchar(255),
type enum('Dog','Cat','Hamster'),
birth_date date);

create table Cat (
id INT auto_increment primary key,
name varchar(255),
type enum('Cat'),
birth_date date);

insert into Cat (name,type,birth_date) values 
('max','Cat','2024-00-20'),
('jaison','Cat','2025-11-10'),
('bob','Cat','2022-06-20');

create table Dog (
id INT auto_increment primary key,
name varchar(255),
type enum('Dog'),
birth_date date);

insert into Dog (name,type,birth_date) values 
('max','Dog','2021-05-20'),
('jaison','Dog','2023-03-10'),
('bob','Dog','2022-08-20');

create table Hamster (
id INT auto_increment primary key,
name varchar(255),
type enum('Hamster'),
birth_date date);

insert into Hamster (name,type,birth_date) values 
('dima','Hamster','2024-01-20'),
('jakson','Hamster','2021-04-10'),
('bib','Hamster','2025-05-20');



create table PackAnimals (
id INT auto_increment primary key,
name varchar(255),
type enum('Horse','Camel','Donkey'),
birth_date date);

create table Horse (
id INT auto_increment primary key,
name varchar(255),
type enum('Horse'),
birth_date date);

create table Camel (
id INT auto_increment primary key,
name varchar(255),
type enum('Camel'),
birth_date date);

create table Donkey (
id INT auto_increment primary key,
name varchar(255),
type enum('Donkey'),
birth_date date);

insert into Horse (name,type,birth_date) values 
('dana','Horse','2022-06-21'),
('kira','Horse','2020-08-15'),
('gib','Horse','2021-02-23');

insert into Camel (name,type,birth_date) values 
('dima','Camel','2023-07-27'),
('jakson','Camel','2023-04-11'),
('bib','Camel','2025-02-21');

insert into Donkey (name,type,birth_date) values 
('dina','Donkey','2024-04-22'),
('clark','Donkey','2020-04-16'),
('bobi','Donkey','2018-05-28');
