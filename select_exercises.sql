use albums_db;

/* a. How many rows are in the albums table? 31

b. How many unique artist names are in the albums table? 23

c. What is the primary key for the albums table? id

d. What is the oldest release date for any album in the albums table? 1967 What is the most recent release date? 2011 */

select *
from albums
where artist = 'pink floyd';

-- The Dark Side of the Moon and The Wall

select release_date
from albums
where name = "Sgt. Pepper's Lonely Hearts Club Band";

-- 1967

select genre
from albums
where name = 'Nevermind';

-- Grunge, Alternative rock

select name
from albums
where release_date between '1990' and '1999';

/* The Bodyguard
Jagged Little Pill
Come On Over
Falling into You
Let's Talk About Love
Dangerous
The Immaculate Collection
Titanic: Music from the Motion Picture
Metallica
Nevermind
Supernatural */

select name
from albums
where sales < 20;

/* Grease: The Original Soundtrack from the Motion Picture
Bad
Sgt. Pepper's Lonely Hearts Club Band
Dirty Dancing
Let's Talk About Love
Dangerous
The Immaculate Collection
Abbey Road
Born in the U.S.A.
Brothers in Arms
Titanic: Music from the Motion Picture
Nevermind
The Wall */

select name
from albums
where genre = 'Rock';

/* Sgt. Pepper's Lonely Hearts Club Band
1
Abbey Road
Born in the U.S.A.
Supernatural 

Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"? These genres are listed as seperate categories from rock */



