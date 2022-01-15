create database if not exists socialmedia;

use socialmedia;



drop tables if exists comments;
drop table if exists posts;
drop table if exists account;

create table account (
account_id int(11) not null auto_increment,
email varchar(100) not null Unique,
first_name varchar(40) not null,
last_name varchar(40) not null,
password varchar(200) not null,
city varchar(20) not null,
street varchar(20) not null,
state char(2) not null,
zip char(10),
date_time_Create timestamp not null default current_timestamp,
primary key(account_id)   
);


create table posts (
posts_id int(11) not null auto_increment,
posts text not null,
account_id int(11) not null,
date_time_Create timestamp not null default current_timestamp,
primary key(posts_id),
CONSTRAINT `posts` FOREIGN KEY(account_id) REFERENCES `account`(account_id)
);

create table comments (
comments_id int(11) not null auto_increment,
comments text not null,
account_id int(11) not null,
posts_id int(11) not null,
date_time_create timestamp not null default current_timestamp,
primary key(comments_id),
CONSTRAINT `comments` FOREIGN KEY (account_id) REFERENCES `account` (account_id),
CONSTRAINT `comments_2` FOREIGN KEY (posts_id) REFERENCES `posts` (posts_id)
);