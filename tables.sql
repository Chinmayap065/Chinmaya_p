CREATE DATABASE my_institute;
USE my_institute;

CREATE TABLE courses (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(20)
);

INSERT INTO courses VALUES 
(1, 'Java'),
(2, 'Python'),
(3, 'JavaScript');

CREATE TABLE students (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(20),
    c_id INT,
    FOREIGN KEY (c_id) REFERENCES courses(c_id)
);

INSERT INTO students (s_id, s_name, c_id) VALUES 
(101, 'Raj', 2),
(103, 'Rajan', 3);

SELECT students.s_id, students.s_name, courses.c_name
FROM students
JOIN courses ON students.c_id = courses.c_id;
-- left join 
select * from courses left join students
on courses.c_id = students.c_id
union
-- right join
select * from courses right join students
on courses.c_id= students.c_id;
select * from courses as abc inner join students as xyz
on abc.c_id = xyz.c_id;
 
