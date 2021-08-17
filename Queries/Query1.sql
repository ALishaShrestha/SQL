SELECT Person.First_name, Person.Last_name, Person.Gender, 
Address.Address_no, Address.House_no, Address.Country,Address.Province, Address.Street, Address.City,
Contact.Phone_no
FROM Student JOIN Person ON Student.Id_number = Person.Id_number
JOIN Personal_info ON Person.Id_number = Personal_info.Id_number
JOIN Address ON Personal_info.Mail_address = Address.Address_no
JOIN Contact ON Address.Address_no = Contact.Address_no;
