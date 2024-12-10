DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER,
  grade TEXT
);

INSERT INTO students (name, age, grade) VALUES ("Alice", 12, "7th");