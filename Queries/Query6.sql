SELECT Person.First_name, Person.last_name,Specification.Specification_Code, Specification.Specific_name
FROM Person JOIN Student ON Person.id_number = Student.Id_number 
JOIN Specification ON Student.Specification_code = Specification.Specification_Code
WHERE lower(Specification.Specific_name) = 'networking';
