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
birth_date date,
commands VARCHAR(255));


insert into Cat (name,type,birth_date,commands) values 
('max','Cat','2024-05-20','jumping'),
('jaison','Cat','2024-11-10','sitting'),
('bob','Cat','2022-06-20','purrs');

create table Dog (
id INT auto_increment primary key,
name varchar(255),
type enum('Dog'),
birth_date date,
commands VARCHAR(255));

insert into Dog (name,type,birth_date,commands) values 
('max','Dog','2021-05-20','barks'),
('jaison','Dog','2023-03-10','jumping'),
('bob','Dog','2022-08-20','eats');

create table Hamster (
id INT auto_increment primary key,
name varchar(255),
type enum('Hamster'),
birth_date date,
commands VARCHAR(255));

insert into Hamster (name,type,birth_date,commands) values 
('dima','Hamster','2024-01-20','runs in a wheel'),
('jakson','Hamster','2021-04-10','digs know'),
('bib','Hamster','2024-05-20','sleeping');



create table PackAnimals (
id INT auto_increment primary key,
name varchar(255),
type enum('Horse','Camel','Donkey'),
birth_date date);

create table Horse (
id INT auto_increment primary key,
name varchar(255),
type enum('Horse'),
birth_date date,
commands VARCHAR(255));

create table Camel (
id INT auto_increment primary key,
name varchar(255),
type enum('Camel'),
birth_date date,
commands VARCHAR(255));

create table Donkey (
id INT auto_increment primary key,
name varchar(255),
type enum('Donkey'),
birth_date date,
commands VARCHAR(255));

insert into Horse (name,type,birth_date,commands) values 
('dana','Horse','2022-06-21','jump'),
('kira','Horse','2020-08-15','sleeping'),
('gib','Horse','2021-02-23','walking');

insert into Camel (name,type,birth_date,commands) values 
('dima','Camel','2023-07-27','drinks water'),
('jakson','Camel','2023-04-11','sleeping'),
('bib','Camel','2024-02-21','walking');

insert into Donkey (name,type,birth_date,commands) values 
('dina','Donkey','2024-04-22','sitting'),
('clark','Donkey','2020-04-16','sitting'),
('bobi','Donkey','2018-05-28','sitting');



-- Создание таблицы, объединяющей данные о лошадях и ослах
CREATE TABLE HorsesAndDonkeys AS
SELECT id, name, type, birth_date
FROM Horse
UNION ALL
SELECT id, name, type, birth_date
FROM Donkey;

DELETE FROM Camel;

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



