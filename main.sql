CREATE table items(
  id int ,
  item char,
  price int,
  PRIMARY KEY (id)
);

INSERT into items  (id, item, price) values (2, 'apple', 300);
INSERT into items  (id, item, price) values (7, 'banana', 800);
  INSERT into items  (id, item, price) values (8, 'melon', 1800);

update items set price = 700,id = 3 where id = 2;

delete from items where id = 3;
  
select * from items;