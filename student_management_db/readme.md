# Student Management System Database

A PostgreSQL database for managing students, courses, instructors, and enrollments.

## Database Tables

| Table | Description |
|-------|-------------|
| departments | Academic departments |
| students | Student records |
| instructors | Teaching staff |
| courses | Available courses |
| classes | Course sections per semester |
| enrollments | Student-class registrations |

## How to Run

1. Create database:
   ```sql
   CREATE DATABASE student_management;
   ```
2. Run schema files in order (01, 02, 03...):
   ```bash
   for f in schema/*.sql; do psql -d student_management -f "$f"; done
   ```
3. Run seed_data.sql for sample data:
   ```bash
   psql -d student_management -f data/seed_data.sql
   ```
