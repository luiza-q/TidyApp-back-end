DROP DATABASE IF EXISTS tidy_app;

CREATE DATABASE tidy_app;

CREATE TYPE frequency AS ENUM ('weekly', 'biweekly', 'monthly');

create table tidy_group (
	id serial primary key,
	group_name varchar(60) not null,
	date_of_creation date not null,
	frequency frequency not null,
	group_secret varchar(60) not null,
	number_of_roomies int not null,
	email varchar(120) not null 
);

CREATE TYPE type AS ENUM ('roomie', 'admin');

create table users (
	id serial primary key,
	username varchar(60) not null,
	email varchar(120) not null,
	type_of_user type not null,
	group_id int references tidy_group(id),
	password varchar(60) not null
);

create table tasks (
	id serial primary key,
	name varchar(60) not null,
	task_completed boolean not null,
	description varchar(500),
	starting_date date not null,
	group_id int references tidy_group(id),
	user_id int references users(id)
);

