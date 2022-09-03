CREATE VIEW tabelas_unidas AS
    SELECT
		dm.person_id,
		person_age,
		person_income,
		person_home_ownership,
		person_emp_length,
		emp.loan_id,
		loan_intent,
		loan_grade,
		loan_amnt,
		loan_int_rate,
		loan_status,
		loan_percent_income,
		hb.cb_id,
		cb_person_default_on_file,
		cb_person_cred_hist_length
	FROM id AS id
JOIN dados_mutuarios AS dm ON dm.person_id = id.person_id
JOIN emprestimos AS emp ON emp.loan_id = id.loan_id
JOIN historicos_banco AS hb ON hb.cb_id = id.cb_id;


