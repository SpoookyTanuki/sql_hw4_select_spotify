create table if not exists Genre(
	id serial primary key,
	name varchar(50) not null
);

create table if not exists Artist(
	id serial primary key,
	name varchar(50) not null
);

create table if not exists GenreArtist(
	id serial primary key,
	genre_id integer not null references Genre(id),
	artist_id integer not null references Artist(id)
);

create table if not exists Album(
	id serial primary key,
	name varchar(50) not null,
	year date not null
);

create table if not exists ArtistAlbum(
	id serial primary key,
	artist_id integer not null references Artist(id),
	album_id integer not null references Album(id)
);

create table if not exists Track(
	id serial primary key,
	name varchar(50) null,
	duration time null,
	album_id integer references Album(id) not null
);

create table if not exists Collection(
	id serial primary key,
	name varchar(50) not null,
	year date not null
);

create table if not exists TrackCollection(
	id serial primary key,
	track_id integer not null references Track(id),
	collection_id integer not null references Collection(id)
)