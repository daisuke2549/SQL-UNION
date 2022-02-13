CREATE TABLE employees(
  NO int NOT NULL, 
  last_name varchar(255), 
  first_name varchar(255), 
  PRIMARY KEY (NO)
);

INSERT INTO employees VALUES('1','鈴木','太郎');
INSERT INTO employees VALUES('2','佐藤','一郎');
INSERT INTO employees VALUES('3','田中','大輔');


CREATE TABLE departments(
 　 NO int NOT NULL,
  department_name varchar(255), 
  PRIMARY KEY (department_name)
);

SELECT
  *
FROM
  employees
INNER JOIN
  departments 
ON employees.NO = departments.NO; 