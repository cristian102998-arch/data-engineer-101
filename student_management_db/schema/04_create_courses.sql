CREATE TABLE courses (
  course_id serial PRIMARY KEY,
  course_cod varchar(20) UNIQUE NOT NULL,
  name varchar(100) NOT NULL,
  description text,
  credit int check (credit > 0 and credit <= 6),
  department_id int references departments(department_id),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);