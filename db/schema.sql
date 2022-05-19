CREATE DATABASE cb_media;
\c cb_media

CREATE TABLE posts(id SERIAL PRIMARY KEY, user_id INTEGER, post TEXT, feeling TEXT);


CREATE TABLE users(
    id SERIAL PRIMARY KEY, name TEXT,
    email TEXT, image_url TEXT, bootcamp TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT; 

SELECT users.name AS user_name, posts.post, posts.feeling FROM posts INNER JOIN users ON users.id = posts.user_id;


SELECT post FROM posts AS user_posts INNER JOIN users ON posts.user_id = user_id WHERE posts.user_id == users.id;

-- original database join code
-- SELECT users.name AS user_name, account.name, account.image_url, account.post FROM account INNER JOIN users ON users.id = account.user_id;