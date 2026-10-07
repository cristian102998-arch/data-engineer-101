CREATE TABLE departments (
  department_id  serial PRIMARY KEY,
  name varchar(100) UNIQUE NOT NULL,
  building varchar(50),
  create_at timestamp DEFAULT 'now()'
);