--1--

SELECT * FROM consulta 
WHERE 
year (data)= year( curdate())-2 AND 
convenio_id    IS     NOT  NULL;

--2--

SELECT * FROM internacao 
WHERE 
data_prev_alta <  data_alta;

--3--

SELECT * FROM receitas
WHERE consulta_id = 1;

--4--

SELECT 
id,
paciente_id,
medico_id,
especialidade_id,
categoria_id,
data,
hora,
valor,
convenio_id,
carteirinha,
receita_id
FROM consulta
WHERE
convenio_id	IS NULL AND 
(valor = (SELECT MAX(valor) FROM consulta) OR
valor = (SELECT MIN(valor) FROM consulta));

--5--

SELECT
I.id,
I.data_entrada,
I.data_prev_alta,
I.data_alta,
(DATEDIFF(I.data_alta, I.data_entrada)) * T.valor_diario AS total,
I.procedimentos,
I.id_quarto,
I.id_enfermagem,
I.id_enfermagem2,
id_paciente,
id_medico
FROM internacao AS I INNER JOIN quarto AS Q ON I.id_quarto = Q.id
INNER JOIN tipo_quarto AS T ON Q.id_tipo = T.id;

--6--

SELECT
I.id,
I.data_entrada,
I.procedimentos,
Q.quartoNum
FROM internacao AS I INNER JOIN quarto AS Q ON I.id_quarto = Q.id
WHERE
Q.id_tipo = 1;

--7--

SELECT 
C.id,
P.nome,
C.data,
C.especialidade_id
FROM consulta AS C INNER JOIN pacientes AS P ON C.paciente_id = P.id
WHERE
(CURDATE() - P.nascimento < 18) AND
C.especialidade_id <> 1 
ORDER BY
C.data;

--A 7 não irá retornar nada, pois nenhuma consulta atende a tudo que está no WHERE--

--8--

SELECT
I.id AS "Id Internação",
P.nome AS "Paciente",
M.nome AS "Médico",
I.data_entrada,
I.procedimentos
FROM internacao AS I INNER JOIN pacientes AS P ON I.id_paciente = P.id
INNER JOIN medicos AS M ON I.id_medico = M.id
INNER JOIN quarto AS Q ON I.id_quarto = Q.id
WHERE
M.especialidade_id = 3 AND
Q.id_tipo = 3;

--Assim como a 7, a 8 não retorna nada pois nenhuma internação atende a tudo que está no WHERE--

--9--

SELECT
M.nome,
M.CRM,
COUNT(*) AS "Consultas"
FROM medicos AS M INNER JOIN consulta AS C ON M.id = C.medico_id
GROUP BY
M.nome;

--10--

SELECT 
E.nome,
E.cre,
COUNT(*) AS "Internações"
FROM enfermagem AS E INNER JOIN internacao AS I ON E.id = I.id_enfermagem 
GROUP BY
E.nome HAVING COUNT(*) > 1;
