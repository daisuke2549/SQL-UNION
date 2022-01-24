create table UNION1(
  id INT,
  stock INT
);

INSERT INTO UNION1 VALUES (1,25);
INSERT INTO UNION1 VALUES (2,45);

create table UNION2(
  id INT,
  stock INT
);


INSERT INTO UNION2 VALUES (3,65);
INSERT INTO UNION2 VALUES (2,45);
INSERT INTO UNION2 VALUES (5,85);

-- select id, stock from UNION1
-- UNION ALL
-- select id, stock from UNION2

select id, stock from UNION1
UNION
select id, stock from UNION2