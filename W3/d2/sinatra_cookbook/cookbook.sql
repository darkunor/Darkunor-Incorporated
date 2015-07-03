drop table categories;

create table categories(
 id serial4 primary key, 
 name varchar(255) not null,
 cost varchar (255)
);

insert into categories (name) values ('starter');
insert into categories (name) values ('main');
insert into categories (name) values ('dessert');



  drop table recipes;

  create table recipes (
  id serial4 primary key,
    name varchar(255) not null,
    description text, 
    category_id integer
    );


  insert into recipes (name, description, category_id)
    values ('scrambled eggs', 'get eggs and scramble them')