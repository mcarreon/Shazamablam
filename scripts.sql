create schema if not exists shazamablam;

--Create song table 
create table if not exists shazamablam.song(
  song_id text not null primary key, 
  song_name text not null,
  subtitle text, 
  background text,
  coverart text,
  coverarthq text,
  shazam_url text
);

--Create artist table
create table if not exists shazamablam.artist (
  artist_id text not null primary key,
  artist_name text not null
);

--Create city table
create table if not exists shazamablam.city(
  city_id text not null primary key, 
  city_name text not null, 
  state_id text not null
);

--Create artist_song_ref
create table if not exists shazamablam.artist_song_ref (
  artist_id text not null, 
  foreign key (artist_id) references shazamablam.artist(artist_id),
  song_id text not null,
  foreign key (song_id) references shazamablam.song(song_id)
);

--Create records table
create table if not exists shazamablam.record(
  song_id text not null, 
  foreign key (song_id) references shazamablam.song(song_id),
  song_rank integer not null,
  city_id text not null,
  foreign key (city_id) references shazamablam.city(city_id),
  record_date date default current_date
);

