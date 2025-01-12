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


DELETE FROM Camel;

-- Создание таблицы, объединяющей данные о лошадях и ослах
CREATE TABLE HorsesAndDonkeys AS
SELECT id, name, type, birth_date
FROM Horse
UNION ALL
SELECT id, name, type, birth_date
FROM Donkey;


-- Создание таблицы "молодые животные"
CREATE TABLE YoungAnimals AS
SELECT 
    id,
    name,
    type,
    birth_date,
    TIMESTAMPDIFF(MONTH, birth_date, CURDATE()) AS age_in_months
FROM (
    SELECT id, name, type, birth_date FROM Cat
    UNION ALL
    SELECT id, name, type, birth_date FROM Dog
    UNION ALL
    SELECT id, name, type, birth_date FROM Hamster
    UNION ALL
    SELECT id, name, type, birth_date FROM Horse
    UNION ALL
    SELECT id, name, type, birth_date FROM Donkey
    ) AS AllAnimals
WHERE TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) >= 1
  AND TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) < 3;


-- Создание итоговой таблицы "Все животные"
CREATE TABLE FinalAnimals AS
SELECT 
    id,
    name,
    type,
    birth_date,
    'Cat' AS origin_table
FROM Cat
UNION ALL
SELECT 
    id,
    name,
    type,
    birth_date,
    'Dog' AS origin_table
FROM Dog
UNION ALL
SELECT 
    id,
    name,
    type,
    birth_date,
    'Hamster' AS origin_table
    FROM Hamster
UNION ALL
SELECT 
    id,
    name,
    type,
    birth_date,
    'Horse' AS origin_table
FROM Horse
UNION ALL
SELECT 
    id,
    name,
    type,
    birth_date,
    'Donkey' AS origin_table
FROM Donkey;



