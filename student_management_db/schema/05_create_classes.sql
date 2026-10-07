CREATE TABLE classes (
  class_id serial PRIMARY KEY,
  course_id int references courses(course_id),
  instructor_id int references instructors(instructor_id),
  semester varchar(20) NOT NULL,
  year int NOT NULL,
  max_students int DEFAULT 30,
  schedule varchar(100),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);