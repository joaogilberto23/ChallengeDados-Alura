-- VERIFICANDO INCONSISTENCIAS DOS DADOS
-- -----------------------------------------------------------------------------------------------------------
-- TABELA DADOS_MUTARIOS 
-- -----------------------------------------------------------------------------------------------------------
-- Verificando os campos da tabela 'dados_mutuarios'
SELECT * FROM dados_mutuarios;

-- Verificando se existem registros DUPLICADOS no campo 'person_id':
SELECT person_id, COUNT(person_id) AS QTD
FROM dados_mutuarios
GROUP BY person_id
ORDER BY QTD DESC;

-- Verificando se existem registros NULOS no campo 'person_id':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_id IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'person_id':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_id = '';

-- Verificando se existem registros NULOS no campo 'person_age':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_age IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'person_age':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_age = '';

-- Verificando se existem registros NULOS no campo 'person_income':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_income IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'person_income':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_income = '';

-- Verificando se existem registros NULOS no campo 'person_home_ownership':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_home_ownership IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'person_home_ownership':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_home_ownership = '';

-- Verificando se existem registros NULOS no campo 'person_emp_length':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_emp_length IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'person_emp_length':
SELECT COUNT(*)
FROM dados_mutuarios
WHERE person_emp_length = '';
/* 
RESULTADO DA VERIFICAÇÃO NA TEBELA DADOS_MUTUARIOS:

Campo 'person_id' - Registros NULO = 0, Registros em branco = 4;
Campo 'person_age' - Registros NULO = 321, Registros em branco = 0;
Campo 'person_income' - Registros NULO = 336, Registros em branco = 0;
Campo 'person_home_ownership' - Registros NULO = 0, Registros em branco = 331;
Campo 'person_emp_length' - Registros NULO = 1257, Registros em branco = 4317;
A tabela como um todo não possui registro duplicado, tendo como base o campo 'person_id'.
*/
-- -----------------------------------------------------------------------------------------------------------
-- TABELA EMPRESTIMOS
-- -----------------------------------------------------------------------------------------------------------
-- Verificando os campos da tabela 'emprestimos'
SELECT * FROM emprestimos;

-- Verificando se existem registros DUPLICADOS no campo 'loan_id':
SELECT loan_id, COUNT(loan_id) AS QTD
FROM emprestimos
GROUP BY loan_id
ORDER BY QTD DESC;

-- Verificando se existem registros NULOS no campo 'loan_id':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_id IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_id':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_id = '';

-- Verificando se existem registros NULOS no campo 'loan_intent':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_intent IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_intent':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_intent = '';

-- Verificando se existem registros NULOS no campo 'loan_grade':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_grade IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_grade':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_grade = '';

-- Verificando se existem registros NULOS no campo 'loan_amnt':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_amnt IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_amnt':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_amnt = '';

-- Verificando se existem registros NULOS no campo 'loan_int_rate':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_int_rate IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_int_rate':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_int_rate = '';

-- Verificando se existem registros NULOS no campo 'loan_status':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_status IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_status':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_status = '';

-- Verificando se existem registros NULOS no campo 'loan_percent_income':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_percent_income IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_percent_income':
SELECT COUNT(*)
FROM emprestimos
WHERE loan_percent_income = '';
/* 
RESULTADO DA VERIFICAÇÃO NA TEBELA EMPRESTIMOS:

Campo 'loan_id' - Registros NULO = 0, Registros em branco = 0;
Campo 'loan_intent' - Registros NULO = 0, Registros em branco = 312;
Campo 'loan_grade' - Registros NULO = 0, Registros em branco = 310;
Campo 'loan_amnt' - Registros NULO = 331, Registros em branco = 0;
Campo 'loan_int_rate' - Registros NULO = 3627, Registros em branco = 0;
Campo 'loan_status' - Registros NULO = 343, Registros em branco = 26696;
Campo 'loan_percent_income' - Registros NULO = 316, Registros em branco = 9.
A tabela como um todo não possui registro duplicado, tendo como base o campo 'loan_id'.
*/
-- -----------------------------------------------------------------------------------------------------------
-- TABELA HISTORICOS_BANCO
-- -----------------------------------------------------------------------------------------------------------
-- Verificando os campos da tabela 'emprestimos'
SELECT * FROM historicos_banco;

-- Verificando se existem registros DUPLICADOS no campo 'cb_id':
SELECT cb_id, COUNT(cb_id) AS QTD
FROM historicos_banco
GROUP BY cb_id
ORDER BY QTD DESC;

-- Verificando se existem registros NULOS no campo 'cb_id':
SELECT COUNT(*)
FROM historicos_banco
WHERE cb_id IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'cb_id':
SELECT COUNT(*)
FROM historicos_banco
WHERE cb_id = '';

-- Verificando se existem registros NULOS no campo 'cb_person_default_on_file':
SELECT COUNT(*)
FROM historicos_banco
WHERE cb_person_default_on_file IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'cb_person_default_on_file':
SELECT COUNT(*)
FROM historicos_banco
WHERE cb_person_default_on_file = '';

-- Verificando se existem registros NULOS no campo 'cb_person_cred_hist_length':
SELECT COUNT(*)
FROM historicos_banco
WHERE cb_person_cred_hist_length IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'cb_person_cred_hist_length':
SELECT COUNT(*)
FROM historicos_banco
WHERE cb_person_cred_hist_length = '';
/* 
RESULTADO DA VERIFICAÇÃO NA TEBELA HISTORICOS_BANCO:

Campo 'cb_id' - Registros NULO = 0, Registros em branco = 0;
Campo 'cb_person_default_on_file' - Registros NULO = 0, Registros em branco = 367;
Campo 'cb_person_cred_hist_length' - Registros NULO = 1, Registros em branco = 0.
A tabela como um todo não possui registro duplicado, tendo como base o campo 'cb_id'.
*/
-- -----------------------------------------------------------------------------------------------------------
-- TABELA ID
-- -----------------------------------------------------------------------------------------------------------
-- Verificando os campos da tabela 'emprestimos'
SELECT * FROM id;

-- Verificando se existem registros DUPLICADOS no campo 'person_id':
SELECT person_id, COUNT(person_id) AS QTD
FROM id
GROUP BY person_id
ORDER BY QTD DESC;

-- Verificando se existem registros NULOS no campo 'person_id':
SELECT COUNT(*)
FROM id
WHERE person_id IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'person_id':
SELECT COUNT(*)
FROM id
WHERE person_id = '';

-- Verificando se existem registros DUPLICADOS no campo 'loan_id':
SELECT loan_id, COUNT(loan_id) AS QTD
FROM id
GROUP BY loan_id
ORDER BY QTD DESC;

-- Verificando se existem registros NULOS no campo 'loan_id':
SELECT COUNT(*)
FROM id
WHERE loan_id IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'loan_id':
SELECT COUNT(*)
FROM id
WHERE loan_id = '';

-- Verificando se existem registros DUPLICADOS no campo 'cb_id':
SELECT cb_id, COUNT(cb_id) AS QTD
FROM id
GROUP BY cb_id
ORDER BY QTD DESC;

-- Verificando se existem registros NULOS no campo 'cb_id':
SELECT COUNT(*)
FROM id
WHERE cb_id IS NULL;

-- Verificando se existem registros EM BRANCO no campo 'cb_id':
SELECT COUNT(*)
FROM id
WHERE cb_id = '';
/* 
RESULTADO DA VERIFICAÇÃO NA TEBELA ID:

Campo "person_id" - Registros NULO = 0, Registros em branco = 4;
Campo "loan_id" - Registros NULO = 0, Registros em branco = 0;
Campo "cb_id" - Registros NULO = 0, Registros em branco = 0.
A tabela como um todo não possui registro duplicado, tendo como base o campo 'person_id'.
*/