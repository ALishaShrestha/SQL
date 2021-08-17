SELECT Instructor.Instructor_id, Instructor.Salary, Person.First_name, Person.Last_name
FROM Person JOIN Instructor ON Person.Id_number = Instructor.Id_number
WHERE Salary > 50000 and lower(First_name) like '%s%' or lower(Last_name) like '%s';
