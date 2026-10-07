CREATE TABLE instructors (
  instructor_id serial PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  phone varchar(20),
  date_birth date,
  hire_date date DEFAULT CURRENT_DATE,
  salary decimal(10,2),
  department_id int references departments(department_id),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);