create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	email VARCHAR(50),
	rewards_member BOOLEAN,
	ticket_id INTEGER not null,
	foreign key(ticket_id) references ticket(ticket_id)
);

create table ticket(
	ticket_id SERIAL primary key,
	price NUMERIC(4,2),
	showtime TIMESTAMP,
	movie_id INTEGER not null,
	foreign key(movie_id) references movie(movie_id)
);

create table movie(
	movie_id SERIAL primary key,
	movie_name VARCHAR(25),
	rating CHAR(5),
	description VARCHAR(200),
	screen_id INTEGER not null
);