SELECT Person.First_name, Person.Last_name, Module.Module_name, Contact.Phone_no, Module_head.Head
FROM Contact JOIN Address ON Contact.Address_no = Address.Address_no
JOIN Personal_info ON Address.Address_no = Personal_info.Mail_address
JOIN Person ON Personal_info.Id_number = Person.Id_number
JOIN Instructor ON Person.Id_number = Instructor.id_number
JOIN Module_head ON Instructor.Instructor_id = Module_head.Head
JOIN Module ON Module_head.Module_code = Module.Module_code;
