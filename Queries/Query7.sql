SELECT Fax.Fax_no, Person.First_name, Person.Last_name, Module.Module_name
FROM Module JOIN Module_head ON Module.Module_code = Module_head.Module_code
JOIN Instructor ON Module_head.Head= Instructor.Instructor_id
JOIN Person ON Instructor.Id_number = Person.Id_number
JOIN Personal_info ON Person.Id_number = Personal_info.Id_number
JOIN Address ON Personal_info.Mail_Address= Address.Address_no 
JOIN Fax ON Address.address_no = Fax.Address_no  
WHERE lower(Module.Module_name) = 'database';
