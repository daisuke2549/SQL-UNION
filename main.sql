CREATE table items(
  id int auto_increment,
  item char,
  price int,
  PRIMARY KEY (id)
);

INSERT into items  (id, item, price) values (1,'apple', 300);
INSERT into items  (id, item, price) values (2,'banana', 800);
INSERT into items  (id, item, price) values (3,'melon', 1800);
INSERT into items  (id, item, price) values (4,'strawberry', 100);
INSERT into items  (id, item, price) values (5,'orange', 650);

-- update items set price = 700,id = 3 where id = 2;

delete from items where id = 3;

ALTER table items ADD keyword char;
  
select * from items where id = 10;

CREATE table person(
  id int,
  name char,
  address char,
  tel char,
  PRIMARY KEY (id)
); 

INSERT into person (id, name, address, tel) values (1,'佐々木','川崎市', 650);
INSERT into person (id, name, address, tel) values (2,'鈴木','登米市', 4650);
INSERT into person (id, name, address, tel) values (4,'伊藤','松本市', 400);
INSERT into person (id, name, address, tel) values (5,'加藤','杉並区', 880);

SELECT
  *
FROM
  items a 
INNER JOIN
  person b 
ON
  a.id = b.id