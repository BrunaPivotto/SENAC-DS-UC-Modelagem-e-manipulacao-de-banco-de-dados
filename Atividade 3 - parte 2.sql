ALTER TABLE medicos
ADD COLUMN status VARCHAR(10);

UPDATE  
medicos
SET
status = "Ativo"
WHERE
id = 2 OR id = 3 OR id = 4 OR id = 5 OR id = 6 OR id = 7 OR id = 8 OR id =10;

UPDATE  
medicos
SET
status = "Inativo"
WHERE
id = 1 OR id = 9;

UPDATE
internacao
SET
data_alta = data_alta + 00000003
WHERE
id = 1 OR id = 7;

DELETE FROM
convenio
WHERE
id = 4;

DELETE FROM 
consulta
WHERE
id = 4 OR id = 16;