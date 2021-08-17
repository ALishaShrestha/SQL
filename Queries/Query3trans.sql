SELECT Person.First_name, Person.Last_name, ((sysdate-Student.Enrollment_Date)/7) AS "Enrollment_date"
FROM Student JOIN Person ON Student.Id_number = Person.Id_number;

