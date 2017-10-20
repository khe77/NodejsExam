create database confirmbox;

use confirmbox;


create table users(
en integer primary key,
name text,
pw varchar(20)
);

create table confirm(
en integer not null,
task_id integer not null,
cfm_seq integer not null,
cfm_text text,
cfm_yn char(1),
cfm_opinion text,
PRIMARY KEY (`en`, `task_id`, `cfm_seq`)
);

create table pushsets(
en integer not null,
task_id integer not null,
push_yn char(1),
PRIMARY KEY (`en`, `task_id`)
);

create table task(
task_id integer primary key,
task_name text
);



