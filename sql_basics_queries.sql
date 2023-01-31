-- PROBLEM 1: How many students are in the students table? 
 select count(id) from new_schema_students.students;
-- PROBLEM 2: Which student(s) has the highest GPA in the table? 
select * from new_schema_students.students where gpa = 4.00;
-- PROBLEM 3: How many students are located in the state of Virginia? 
select count(*) from new_schema_students.students where state = 'va';
-- PROBLEM 4: How many students have a GPA that is greater than 3.5? 
select count(*) from new_schema_students.students where gpa > 3.5;
-- PROBLEM 5: How many students are NOT on the Honors List? 
select count(*) from new_schema_students.students where honors_list = 1;
-- PROBLEM 6: Two students have the email domain “narod.ru”. What are the names of those students? 
select first_name, last_name, email from new_schema_students.students where email like '%narod.ru%'  ;
-- PROBLEM 7: How many students have a GPA between 2.0 and 3.0? (inclusive) 
select count(*) from new_schema_students.students where gpa between 2.0 and 3.0;
-- PROBLEM 8: What is the average GPA of all students in the students table? 
select avg(gpa) from new_schema_students.students;
-- PROBLEM 9: What is the average GPA of all students in the state of California? 
select avg(gpa) from new_schema_students.students where state = "CA";
-- PROBLEM 10: Which student has the lowest GPA of all students with an address that contains the word “Street”?
select first_name, last_name, gpa, address from new_schema_students.students where address like '%Street%' and gpa= (select min(gpa) from new_schema_students.students where address like '%street%') ; 

select first_name, last_name, state from (select first_name,last_name, email, state from new_schema_students.students where state = 'TX') tx_students;