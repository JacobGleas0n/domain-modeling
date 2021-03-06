DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS followers;

CREATE TABLE users ( 
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 screen_name TEXT,
 first_name TEXT,
 last_name TEXT,
 location TEXT
);

CREATE TABLE posts ( 
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 time TEXT,
 photo TEXT,
 user_id INTEGER
 );

CREATE TABLE likes (
id INTEGER PRIMARY KEY AUTOINCREMENT,
post_id INTEGER,
user_id INTEGER
);

CREATE TABLE comments (
id INTEGER PRIMARY KEY AUTOINCREMENT,
post_id INTEGER,
user_id INTEGER,
comment TEXT
);

CREATE TABLE followers (
id INTEGER PRIMARY KEY AUTOINCREMENT,
followed_user_id INTEGER,
follower_user_id INTEGER
);