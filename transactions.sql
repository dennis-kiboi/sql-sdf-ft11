DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS users;

CREATE TABLE transactions (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  amount REAL,
  date TEXT,
  description TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT
);

-- Inserting data into the users table
INSERT INTO users (name, email)
VALUES
  ('John Doe', 'johndoe@example.com'),
  ('Jane Smith', 'janesmith@example.com'),
  ('Michael Johnson', 'michaeljohnson@example.com'),
  ('Emily Brown', 'emilybrown@example.com'),
  ('David Lee', 'davidlee@example.com'),
  ('Dennis Kemboi', 'dennis.kemboi@student.moringaschool.com');

-- Inserting data into the transactions table
INSERT INTO transactions (user_id, amount, date, description)
VALUES
  (1, 100.00, '2023-11-01', 'Groceries'),
  (1, 50.00, '2023-11-05', 'Coffee Shop'),
  (2, 200.00, '2023-11-10', 'Rent'),
  (2, 150.00, '2023-11-15', 'Dining Out'),
  (3, 75.00, '2023-11-20', 'Shopping'),
  (3, 30.00, '2023-11-25', 'Transportation'),
  (4, 40.00, '2023-11-30', 'Entertainment'),
  (4, 120.00, '2023-12-05', 'Utilities'),
  (5, 55.00, '2023-12-10', 'Phone Bill'),
  (5, 35.00, '2023-12-15', 'Gym Membership'),
  (1, 20.00, '2023-12-20', 'Books'),
  (1, 200.00, '2023-12-25', 'Christmas Gifts'),
  (2, 60.00, '2023-12-31', 'Holiday Party'),
  (2, 170.00, '2024-01-05', 'Groceries'),
  (3, 50.00, '2024-01-10', 'Phone Bill'),
  (3, 35.00, '2024-01-15', 'Gym Membership'),
  (4, 20.00, '2024-01-20', 'Books'),
  (4, 200.00, '2024-01-25', 'Christmas Gifts'),
  (5, 60.00, '2024-01-31', 'Holiday Party'),
  (5, 170.00, '2024-02-05', 'Groceries'),
  (1, 50.00, '2024-02-10', 'Phone Bill'),
  (1, 35.00, '2024-02-15', 'Gym Membership'),
  (2, 20.00, '2024-02-20', 'Books'),
  (2, 200.00, '2024-02-25', 'Christmas Gifts'),
  (3, 60.00, '2024-02-29', 'Holiday Party'),
  (3, 170.00, '2024-03-05', 'Groceries'),
  (4, 50.00, '2024-03-10', 'Phone Bill'),
  (4, 35.00, '2024-03-15', 'Gym Membership');