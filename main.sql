create table UNION1(
  id INT,
  stock INT
);

INSERT INTO UNION1 VALUES (1,25);
INSERT INTO UNION1 VALUES (1,25);
INSERT INTO UNION1 VALUES(7,95);
INSERT INTO UNION1 VALUES(6,65);
INSERT INTO UNION1 VALUES (2,45);
INSERT INTO UNION1 VALUES (5,85);

create table UNION2(
  id INT NOT NULL,
  stock INT
);


INSERT INTO UNION2 VALUES (3,65);
INSERT INTO UNION2 VALUES (2,45);
INSERT INTO UNION2 VALUES (2,45);
INSERT INTO UNION2 VALUES (5,85);

-- select DISTINCT * from UNION1
-- ←DISTINCTを使うと重複しているものを除くことが可能

update UNION1 set stock = 88 where id = 6;

-- select * from UNION1
-- UNION 
-- select * from UNION2



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










create table score (
  id INT UNIQUE,
  stock INT default 76
);

INSERT INTO score VALUES (1,56);
INSERT INTO score(id) VALUES(2);
INSERT INTO score(id) VALUES(3);
INSERT INTO score VALUES(4,88);
INSERT INTO score(stock) VALUES(99);


create table test(
  id INT UNIQUE NOT NULL,
  phone INT
);
INSERT INTO test VALUES (1,01012341234);
INSERT INTO test VALUES (2,03012341238);
INSERT INTO test VALUES (3,(01012341239));
INSERT INTO test VALUES (4,NULL);
INSERT INTO test VALUES (5,03012341234);
INSERT INTO test VALUES (6,04012341239);
INSERT INTO test VALUES (7,04012341237);

CREATE TABLE STUDENT (
  学生番号 CHAR(5) PRIMARY KEY,
  学生名 CHAR(16),
  CHECK(学生番号 LIkE 'A%')
);

-- CHECK制約 = データを追加した時の値が指定した条件を満たしているかをチェック


INSERT INTO STUDENT(学生番号, 学生名) VALUES('A1001','鈴木');
INSERT INTO STUDENT(学生番号, 学生名) VALUES('A1021','伊藤');

INSERT INTO STUDENT(学生番号, 学生名) VALUES('A1031','伊藤');


-- select * from STUDENT


-- GROUP BYの使い方




create table test_table(
  商品分類 CHAR(16) ,
  金額 INT
);

INSERT INTO test_table(商品分類,金額) VALUES (
  'シャツ','10000'
);
INSERT INTO test_table(商品分類,金額) VALUES (
  'パンツ','2000'
);
INSERT INTO test_table(商品分類,金額) VALUES (
  'パンツ','3000'
);

INSERT INTO test_table(商品分類,金額) VALUES (
  'ズボン','4500'
);

INSERT INTO test_table(商品分類,金額) VALUES (
  'シャツ','4500'
);
INSERT INTO test_table(商品分類,金額) VALUES (
  'ズボン','7500'
);

INSERT INTO test_table(商品分類,金額) VALUES(
  'シャツ', '2000'
);


-- select 商品分類, sum(金額) FROM test_table
-- GROUP BY 商品分類 
-- HAVING sum(金額) <= 7000;


-- select * from test_table ORDER BY 
-- 金額 ASC


create table MATH(
  氏名 CHAR(16),
  数学 INT NOT NULL
);

INSERT INTO MATH(氏名,数学) VALUES(
  '鈴木', '1'
);
INSERT INTO MATH(氏名,数学) VALUES(
  '佐藤', '2'
);
INSERT INTO MATH(氏名,数学) VALUES(
  '伊藤', '3'
);
INSERT INTO MATH(氏名,数学) VALUES(
  '佐々木', '4'
);


create table ENGLISH(
  氏名 CHAR(16),
  英語 INT NOT NULL
);

INSERT INTO ENGLISH(氏名,英語) VALUES(
  '鈴木', '5'
);
INSERT INTO ENGLISH(氏名,英語) VALUES(
  '佐藤', '6'
);
INSERT INTO ENGLISH(氏名,英語) VALUES(
  '伊藤', '7'
);

INSERT INTO ENGLISH(氏名,英語) VALUES(
  '佐々木', '8'
);

SELECT *
FROM MATH 
INNER JOIN
ENGLISH 
ON 
MATH.氏名 = ENGLISH.氏名;


CREATE table 都道府県(
  id int NOT NULL UNIQUE, 
  地名 CHAR(16)
);

INSERT INTO 都道府県(id,地名) VALUES(
  '1', '東京都'
);
INSERT INTO 都道府県(id,地名) VALUES(
  '2', '大阪府'
);
INSERT INTO 都道府県(id,地名) VALUES(
  '3', '山形県酒田市'
);
INSERT INTO 都道府県(id,地名) VALUES(
  '4', '秋田県'
);
INSERT INTO 都道府県(id,地名) VALUES(
  '5', '高知県'
);
INSERT INTO 都道府県(id,地名) VALUES(
  '6', '京都府'
);

SELECT * from 都道府県  WHERE 地名 LIKE '%県%';




