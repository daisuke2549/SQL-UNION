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
  
select * from items order by price DESC;