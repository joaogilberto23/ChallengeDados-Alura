-- TRADUZINDO INFORMAÇÕES DOS CAMPOS
-- -----------------------------------------------------------------------------------------------------------
-- TABELA DADOS_MUTARIOS 
-- -----------------------------------------------------------------------------------------------------------
UPDATE dados_mutuarios
SET person_home_ownership = 'Alugada'
WHERE person_home_ownership = 'Rent';

UPDATE dados_mutuarios
SET person_home_ownership = 'Propria'
WHERE person_home_ownership = 'Own';

-- Necessário aumentar o tamanho do campo para inserir a tradução correta:
ALTER TABLE dados_mutuarios MODIFY person_home_ownership VARCHAR(12) ;

UPDATE dados_mutuarios
SET person_home_ownership = 'Hipotecada'
WHERE person_home_ownership = 'Mortgage';

UPDATE dados_mutuarios
SET person_home_ownership = 'Outros'
WHERE person_home_ownership = 'Other';

-- Verificando se todas as informações do campo foram traduzidas:
SELECT DISTINCT person_home_ownership FROM dados_mutuarios;

-- -----------------------------------------------------------------------------------------------------------
-- TABELA EMPRESTIMOS 
-- -----------------------------------------------------------------------------------------------------------
UPDATE emprestimos
SET loan_intent = 'Pessoal'
WHERE loan_intent = 'Personal';

UPDATE emprestimos
SET loan_intent = 'Educativo'
WHERE loan_intent = 'Education';

UPDATE emprestimos
SET loan_intent = 'Medico'
WHERE loan_intent = 'Medical';

UPDATE emprestimos
SET loan_intent = 'Empreendimento'
WHERE loan_intent = 'Venture';

UPDATE emprestimos
SET loan_intent = 'Melhora do lar'
WHERE loan_intent = 'Homeimprovement';

UPDATE emprestimos
SET loan_intent = 'Pagamento de debitos'
WHERE loan_intent = 'Debtconsolidation';

-- Verificando se todas as informações do campo foram traduzidas:
SELECT DISTINCT loan_intent FROM emprestimos;

-- -----------------------------------------------------------------------------------------------------------
-- TABELA HISTORICO_BANCOS 
-- -----------------------------------------------------------------------------------------------------------
-- Necessário aumentar o tamanho do campo para inserir a tradução correta:
ALTER TABLE historicos_banco MODIFY cb_person_default_on_file VARCHAR(3) ;

UPDATE historicos_banco
SET cb_person_default_on_file = 'Sim'
WHERE cb_person_default_on_file = 'Y';

UPDATE historicos_banco
SET cb_person_default_on_file = 'Nao'
WHERE cb_person_default_on_file = 'N';

-- Verificando se todas as informações do campo foram traduzidas:
SELECT DISTINCT cb_person_default_on_file FROM historicos_banco;