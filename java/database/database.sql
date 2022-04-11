BEGIN TRANSACTION;

DROP TABLE IF EXISTS users, recipes, ingredients, recipe_ingredients, appliances, recipe_appliances;

DROP SEQUENCE IF EXISTS seq_user_id;

CREATE SEQUENCE seq_user_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;


CREATE TABLE users (
	user_id int DEFAULT nextval('seq_user_id'::regclass) NOT NULL,
	username varchar(50) UNIQUE NOT NULL,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
insert into users (username,password_hash,role) values ('Matthew', '$2a$10$1LtCDecTzFojoeW86CNDkO6oo8Y3Xr296rVrtrlQH4CduC5PG5cyq', 'ROLE_USER');
insert into users (username,password_hash,role) values ('Ryan', '$2a$10$ESPshb4vZsUzsoLHvd/p5.peGZ7zTq3heGkzjCisIm4Zz4eP09S.q', 'ROLE_USER');
insert into users (username,password_hash,role) values ('David', '$2a$10$Xfy2MHXkL/pynLSNNktDr.aQkAs//mH.Wed2/8qo8NMm5BrhtyAGy', 'ROLE_USER');
insert into users (username,password_hash,role) values ('Marcello', '$2a$10$mI2EpGybkNndTZwmswuUjerSITgRXAHVqG0izB.b6dLv9PNrywpPe', 'ROLE_USER');

CREATE TABLE recipes (
	recipe_id int not null PRIMARY KEY,
	user_id int,
	name varchar(50),
	description varchar(999),
	instructions varchar(999),
	serving int,
	difficulty int,
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

create table ingredients (
	ingredient_id serial not null primary key,
	name varchar(150)
);

create table recipe_ingredients (
	recipe_id int,
	ingredient_id int,
	name varchar(50),
	foreign key (recipe_id) references recipes(recipe_id),
	foreign key (ingredient_id) references ingredients(ingredient_id)
);

create table appliances(
	appliance_id serial not null primary key,
	name varchar(50)
);

create table recipe_appliances(
	appliance_id int,
	recipe_id int,
	foreign key (appliance_id) references appliances(appliance_id),
	foreign key (recipe_id) references recipes(recipe_id)
);






--- USER SETUP (Do Not Modify)
DROP USER IF EXISTS final_capstone_owner;
DROP USER IF EXISTS final_capstone_appuser;

CREATE USER final_capstone_owner
WITH PASSWORD 'finalcapstone';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO final_capstone_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO final_capstone_owner;

CREATE USER final_capstone_appuser
WITH PASSWORD 'finalcapstone';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO final_capstone_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO final_capstone_appuser;

COMMIT TRANSACTION;