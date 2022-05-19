CREATE DATABASE cb_media;
\c cb_media

CREATE TABLE account(id SERIAL PRIMARY KEY, user_id INTEGER, name TEXT, image_url TEXT, post TEXT);

INSERT INTO account(name, image_url, post) VALUES ('user_88', 'https://images.unsplash.com/photo-1652815513350-df3a9712a8cb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500', 'I feel great'), ('user_89', 'https://images.unsplash.com/photo-1652815513350-df3a9712a8cb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500', 'I feel sad');

CREATE TABLE users(
    id SERIAL PRIMARY KEY, name TEXT,
    email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT; 

