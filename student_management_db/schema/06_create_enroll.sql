CREATE TABLE enroll (
  enroll_id serial PRIMARY KEY,
  student_id int references students(student_id),
  class_id int references classes(class_id) on delete cascade,
  enroll_date date DEFAULT CURRENT_DATE,
  grade varchar(2),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  constraint unique_enroll UNIQUE (student_id, class_id)
);
