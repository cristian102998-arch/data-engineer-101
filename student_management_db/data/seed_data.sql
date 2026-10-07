-- Sample data for student_management
-- Order matters because of foreign keys:
-- departments -> instructors -> students -> courses -> classes -> enroll

-- Clear all tables and restart IDs from 1 (makes the script safe to re-run)
TRUNCATE enroll, classes, courses, students, instructors, departments RESTART IDENTITY CASCADE;

-- departments
INSERT INTO departments (name, building) VALUES
  ('Computer Science', 'Building A'),
  ('Mathematics',      'Building B'),
  ('Physics',          'Building C'),
  ('Economics',        'Building D');

-- instructors
INSERT INTO instructors (first_name, last_name, email, phone, date_birth, hire_date, salary, department_id) VALUES
  ('Andrei', 'Popescu',    'andrei.popescu@univ.ro',   '0721000001', '1978-03-14', '2010-09-01', 8500.00, 1),
  ('Maria',  'Ionescu',    'maria.ionescu@univ.ro',    '0721000002', '1982-07-22', '2014-02-15', 7800.00, 2),
  ('Mihai',  'Dumitru',    'mihai.dumitru@univ.ro',    '0721000003', '1975-11-05', '2008-10-01', 9200.00, 3),
  ('Elena',  'Constantin', 'elena.constantin@univ.ro', '0721000004', '1988-01-30', '2018-09-01', 7200.00, 4);

-- students
INSERT INTO students (first_name, last_name, email, phone, date_birth, enrolment_date, department_id, is_active) VALUES
  ('Alexandru', 'Marin',     'alexandru.marin@student.ro', '0740000001', '2003-05-12', '2022-10-01', 1, TRUE),
  ('Ioana',     'Stan',      'ioana.stan@student.ro',      '0740000002', '2004-02-08', '2023-10-01', 2, TRUE),
  ('Radu',      'Georgescu', 'radu.georgescu@student.ro',  '0740000003', '2002-09-27', '2021-10-01', 3, FALSE),
  ('Ana',       'Munteanu',  'ana.munteanu@student.ro',    NULL,         '2005-12-03', '2024-10-01', 4, TRUE);

-- courses
INSERT INTO courses (course_cod, name, description, credit, department_id) VALUES
  ('CS101',   'Introduction to Programming', 'Basics of programming using Python.',           6, 1),
  ('MATH201', 'Linear Algebra',              'Vectors, matrices and linear transformations.', 5, 2),
  ('PHYS101', 'General Physics',             'Mechanics, thermodynamics and waves.',          5, 3),
  ('ECON101', 'Principles of Economics',     'Introduction to micro- and macroeconomics.',    4, 4);

-- classes
INSERT INTO classes (course_id, instructor_id, semester, year, max_students, schedule) VALUES
  (1, 1, 'Fall',   2026, 40,      'Mon/Wed 10:00-12:00'),
  (2, 2, 'Fall',   2026, 30,      'Tue/Thu 08:00-10:00'),
  (3, 3, 'Spring', 2027, 25,      'Wed 14:00-17:00'),
  (4, 4, 'Spring', 2027, DEFAULT, 'Fri 12:00-14:00');

-- enroll
INSERT INTO enroll (student_id, class_id) VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 1),
  (4, 4),
  (1, 3);
