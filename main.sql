-- CREATE TABLE employees(
--   number int NOT NULL, 
--   last_name varchar(255), 
--   first_name varchar(255), 
--   PRIMARY KEY (number)
-- );

-- INSERT INTO employees VALUES('1','鈴木','太郎');
-- INSERT INTO employees VALUES('2','佐藤','一郎');
-- INSERT INTO employees VALUES('3','田中','大輔');


-- CREATE TABLE departments(
--  　 number int NOT NULL,
--   department_name varchar(255), 
--   PRIMARY KEY (department_name)
-- );

-- INSERT INTO departments VALUES('1','Webアプリグループ');
-- INSERT INTO departments VALUES('2','Web制作グループ');

-- SELECT
--   *
-- FROM
--   employees AS a -- 従業員テーブル 別名a
-- INNER JOIN
--   departments AS b --  部署テーブル 別名b
-- ON number = number;


create table staff(id integer, name, deptid integer);

insert into staff values(1, 'Suzuki', 1);
insert into staff values(2, 'Endou', 3);
insert into staff values(3, 'Sato', 1);
insert into staff values(4, 'Yamada', 2);
insert into staff values(5, 'Sasaki', 4);
insert into staff values(6, 'Honda', 3);

create table dept(id integer, name);

insert into dept values(1, 'Sales');
insert into dept values(2, 'Manager');
insert into dept values(3, 'engineer');

-- select * from staff inner join dept on staff.deptid = dept.id;



CREATE TABLE cats(
  id int NOT NULL UNIQUE,
  name varchar(255)
);

insert into cats values(1, 'Goro');
insert into cats values(2, 'Jiro');
insert into cats values(3, 'Daigoro');
insert into cats values(4, 'test');


-- select * from cats;

CREATE TABLE prefecture(
  id int NOT NULL,
  location varchar(255)
);

insert into prefecture values(1, 'Aomori');
insert into prefecture values(2, 'Miyagi');
insert into prefecture values(3, 'Shizuoka');
insert into prefecture values(4, 'Yamanashi');

select * from cats 
INNER JOIN prefecture
ON cats.id = prefecture.id;