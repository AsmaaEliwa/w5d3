PRAGMA foreign_keys = ON;
CREATE TABLE users (
    id PRIMARY KEY,
    fname TEXT NOT NULL ,
     lname TEXT NOT NULL
),
CREATE TABLE questions (
    id PRIMARY KEY,
    title TEXT NOT NULL ,
     body TEXT NOT NULL,
     author_id INTEGER NOT NULL ,
     FOREIGN KEY (author_id) REFERENCES author_id
),
CREATE TABLE question_follows (
    id PRIMARY KEY,
   user_id INTEGER NOT NULL,
   q_id INTEGER NOT NULL,

     FOREIGN KEY (user_id) REFERENCES user_id
     FOREIGN KEY (q_id) REFERENCES q_id

),
CREATE TABLE replies (
    id PRIMARY KEY,
   user_id INTEGER NOT NULL,
   q_id INTEGER NOT NULL,
     body TEXT NOT NULL,

     FOREIGN KEY (user_id) REFERENCES user_id
     FOREIGN KEY (q_id) REFERENCES q_id

),
CREATE TABLE question_likes (
    id PRIMARY KEY,
   user_id INTEGER NOT NULL,
   q_id INTEGER NOT NULL,


     FOREIGN KEY (user_id) REFERENCES user_id
     FOREIGN KEY (q_id) REFERENCES q_id

),