insert into tidy_group (group_name, date_of_creation, frequency, group_secret, number_of_roomies, email) values ('Home', '2021-09-30', 'weekly', 'secret123', 3, 'mail@mail.com') 
insert into tidy_group (group_name, date_of_creation, frequency, group_secret, number_of_roomies, email) values ('Casa', '2021-11-28', 'monthly', 'secret1243', 4, 'otro@mail.com');
insert into tidy_group (group_name, date_of_creation, frequency, group_secret, number_of_roomies, email) values ('my home', '2021-12-28', 'biweekly', 'secret1243', 2, 'luiza@mail.com');

insert into users (username, email, type_of_user, group_id, password) values ('Luiza', 'luizaq@gmail.com', 'admin', 3, 'pass.word');
insert into users (username, email, type_of_user, group_id, password) values ('Ana', 'ana@mail.com', 'roomie', 3, 'word_pass');
insert into users (username, email, type_of_user, group_id, password) values ('João', 'joao@mail.com', 'roomie', 3, 'otherpassword');

insert into users (username, email, type_of_user, group_id, password) values ('Omar', 'omar@gmail.com', 'admin', 4, 'password');
insert into users (username, email, type_of_user, group_id, password) values ('John', 'john@mail.com', 'roomie', 4, 'password2');
insert into users (username, email, type_of_user, group_id, password) values ('Jose', 'jose@mail.com', 'roomie', 4, 'password12');
insert into users (username, email, type_of_user, group_id, password) values ('Maria', 'maria@mail.com', 'roomie', 4, 'password1122');

insert into users (username, email, type_of_user, group_id, password) values ('Jose', 'jose123@mail.com', 'admin', 5, 'password02');
insert into users (username, email, type_of_user, group_id, password) values ('Daniel', 'daniel@mail.com', 'roomie', 5, 'password352542');

insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('cocina', false, 'clean kitchen', '2021-09-30', 3, 3);
insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('sala', false, 'clean', '2021-09-30', 3, 4);
insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('comedor', true, 'clean', '2021-09-30', 3, 5);

insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('comedor12', false, 'clean', '2021-11-28', 4, 6);
insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('comedore4', true, 'clean', '2021-11-28', 4, 7);
insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('cocina', false, 'clean', '2021-11-28', 4, 8);
insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('comedor7', false, 'clean', '2021-11-28', 4, 9);

insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('comedor', false, 'clean', '2021-12-28', 5, 10);
insert into tasks (name, task_completed, description, starting_date, group_id, user_id) values ('sala', false, 'clean', '2021-12-28', 5, 11);
