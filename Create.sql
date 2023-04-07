CREATE table if not EXISTS Ganre (
id SERIAL PRIMARY KEY, 
name VARCHAR(50) NOT null
);

CREATE table if not EXISTS Artist (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT null
);

CREATE table if not EXISTS Alboms (
id SERIAL PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
year INTEGER
);

CREATE table if not EXISTS Song (
id SERIAL PRIMARY KEY,
albom_id INTEGER not null references Alboms(id),
name VARCHAR(100) NOT NULL,
duration TIME
);

CREATE table if not EXISTS Collection (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
year INTEGER
);

CREATE table if not EXISTS GanreArtist (
ganre_id INTEGER REFERENCES Ganre(id),
artist_id INTEGER REFERENCES Artist(id),
CONSTRAINT pk PRIMARY KEY (ganre_id, artist_id)
);

CREATE table if not EXISTS ArtistAlbom (
albom_id INTEGER REFERENCES Alboms(id),
artist_id INTEGER REFERENCES Artist(id),
CONSTRAINT aa PRIMARY KEY (albom_id, artist_id)
);

CREATE table if not EXISTS CollectionSong (
collection_id INTEGER REFERENCES Collection(id),
song_id INTEGER REFERENCES Song(id),
CONSTRAINT CS PRIMARY KEY (collection_id, song_id)
);