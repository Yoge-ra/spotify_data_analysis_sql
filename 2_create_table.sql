--create table 

create table spotify(
artist varchar(255),
track varchar(255),
album varchar(255),
album_type varchar(100),
danceability numeric,
energy numeric,
loudness numeric,
spheechiness numeric,
acousticness numeric,
instrumentalness numeric,
liveness numeric,
valence numeric,
tempo numeric,
duration_min numeric,
title varchar(255),
channel varchar(255),
views numeric,
likes bigint,
comments numeric,
licensed boolean,
official_video boolean,
stream bigint,
energy_liveness numeric,
most_played_on varchar(100)
);