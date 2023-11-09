drop database expensemanagerdb;
drop user expensemanager;
create user expensemanager with password 'password';
create database expensemanager with template=template0 owner=expensemanager;
\connect expensemanager;
alter default priviliges grant all on tables to expensemanager;
alter default priviliges grant all on sequences to expensemanager;

create table em_users (
user_id integer primary key not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(30) not null,
password text not null
);

create table em_categories(
category_id integer primary key not null,
user_id integer not null,
title varchar(20) not null,
description varchar(50) not null
);
alter table em_categories add constraint cat_users_fk
foreign key (user_id) references em_users;

create table em_transactions(
transaction_id integer primary key not null,
category_id integer not null,
user_id integer not null,
amount numeric(10, 2) not null,
note varchar(50) not null,
transaction_date bigint not null
);
alter table em_transactions add constraint trans_cat_fk
foreign key (category_id) references em_categories(category_id);
alter table em_transactions add constraint trans_users_fk
foreign key (user_id) references em_users(user_id);

create sequences em_users_seq increment 1 start 1;
create sequences em_categories_seq increment 1 start 1;
create sequences em_transactions_seq increment 1 start 1000;