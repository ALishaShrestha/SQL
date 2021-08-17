SELECT Module.Module_name,Specification.Specific_name 
FROM Specification JOIN Module_specification on Specification.Specification_code = Module_specification.Specification_code
JOIN Module On Module_specification.Module_code = Module.Module_code
WHERE lower(Specification.Specific_name) = 'multimedia';
