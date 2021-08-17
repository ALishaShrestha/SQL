
SELECT Person.First_name, Person.Last_name,Specification.Specific_name,Specification.Fee,
CASE WHEN lower(Specification.Specific_name) = 'computing' THEN
(Specification.Fee * 0.1) ELSE Specification.Fee END AS Discount
FROM Specification JOIN Student ON Specification.Specification_code = Student.Specification_code
JOIN Person ON Student.Id_number = Person.Id_number
WHERE lower(Specification.Specific_name) = 'computing';
