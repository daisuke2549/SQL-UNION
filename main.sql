create table UNION1(
  id INT,
  stock INT
);

INSERT INTO UNION1 VALUES (1,25);
INSERT INTO UNION1 VALUES(7,95);
INSERT INTO UNION1 VALUES (2,45);
INSERT INTO UNION1 VALUES (5,85);

create table UNION2(
  id INT NOT NULL,
  stock INT
);


INSERT INTO UNION2 VALUES (3,65);
INSERT INTO UNION2 VALUES (2,45);
INSERT INTO UNION2 VALUES (5,85);

-- select id, stock from UNION1
-- UNION ALL
-- select id, stock from UNION2

-- select id, stock from UNION1
-- UNION
-- select id, stock from UNION2


-- select id, stock from UNION1
-- INTERSECT
-- select id, stock from UNION2
-- ⇦INTERSECT は かつの意味


-- select id, stock from UNION1
--  EXCEPT
-- select id, stock from UNION2
-- ⇦差集合


select * from UNION1

-- CREATE TABLE name_age_list(
--     id INTEGER PRIMARY KEY AUTOINCREMENT, 
--     name VARCHAR(30) NOT NULL ,
--     age INT NOT NULL, 
--     gender varchar(30) default man
--     );



-- insert into name_age_list(name, age, gender) values("sasaki", 29, "woman");

-- insert into name_age_list(name, age) values( "suzuki", 24);

-- insert into name_age_list(name, age) values(
--   "tanaka", 39
-- );

-- insert into name_age_list(name, age) values(
--   "takagi", 43
-- );

-- select * from name_age_list;


-- CREATE TABLE EMPLOYEES(
-- id int,
-- department varchar(255) UNIQUE,
-- name varchar(255) not null,
-- nationality varchar(10) default "日本",
-- score int default 200,
-- PRIMARY KEY(id) 
-- );

-- insert into EMPLOYEES(id,department, name) 
-- values(1, "法務部", "鈴木");

-- insert into EMPLOYEES(id,department, name) 
-- values(2,"人事部", "佐々木");

-- insert into EMPLOYEES(id,department, name) 
-- values(3,"マーケティング部", "山田");

-- insert into EMPLOYEES(id,department, name, nationality) 
-- values(4,"総務部", "山口", "インドネシア");

-- insert into EMPLOYEES(id,department, name) 
-- values(5,"営業部", "山本");

-- insert into EMPLOYEES(id,department, name) 
-- values(6,"経理部", "伊藤");

-- insert into EMPLOYEES(id,department, name) 
-- values(7,"営業第２部", "矢島");

-- insert into EMPLOYEES(id,department, name, score) 
-- values(8,"営業第3部", "矢島", 2145);


-- insert into EMPLOYEES(id,department, name, score) 
-- values(9,"営業第4部", "加藤", 779);


-- insert into EMPLOYEES(id,department, name, score) 
-- values(10,"営業第5部","加藤", 340);

-- insert into EMPLOYEES(id,department, name, score) 
-- values(11,"営業第6部","加藤", 1340);


-- select * from EMPLOYEES order by score DESC;

-- -- select sum(score) from EMPLOYEES;

-- -- select AVG(score) from EMPLOYEES;

-- -- select count(score) from EMPLOYEES;







