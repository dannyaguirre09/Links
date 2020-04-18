CREATE DATABASE database_links;

USE database_links;

CREATE table users(
    id int(11) not null,
    username varchar(16) not null,
    password varchar(60) not null,
    fullname varchar(100) not null
);

alter table users
    add primary key (id);

alter table users
    modify id int(11) not null AUTO_INCREMENT;

DESCRIBE users;

create table links(
	id int(11) not null primary key auto_increment,
    title varchar(150) not null,
    url varchar(255) not null,
    description text,
    user_id int(11),
    create_at timestamp not null default current_timestamp,
    constraint fk_user foreign key (user_id) references users(id)
);