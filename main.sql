CREATE TABLE employees (
  no int NOT NULL, -- 
  department_no char(5), 
  last_name varchar(255), 
  PRIMARY KEY (no),
  check(department_no LIKE 'C%')
  check(no between 1 and 10)
);
 
-- テストデータ
INSERT INTO employees VALUES('1', 'C0001','佐々木');
INSERT INTO employees VALUES('2', 'C0001','鈴木');
INSERT INTO employees VALUES('3', 'C0002','伊藤');
INSERT INTO employees VALUES('4', 'C0003','江藤');

CREATE TABLE sample1_departments (
  department_no     char(5),    
  department_name varchar(255),  
  PRIMARY KEY (department_no),
  check(department_name LIKE '%部')
);
 
-- テストデータ
INSERT INTO sample1_departments VALUES('C0001', '営業部');
INSERT INTO sample1_departments VALUES('C0002', '総務部');
INSERT INTO sample1_departments VALUES('C0003', '法務部');
INSERT INTO sample1_departments VALUES('C0004', '人事部');

SELECT * FROM 
  employees a -- 従業員テーブル 別名a
INNER JOIN
  sample1_departments b --  部署テーブル 別名b
ON
  a.department_no = b.department_no; -- a.部署番号 = b.部署番号

  