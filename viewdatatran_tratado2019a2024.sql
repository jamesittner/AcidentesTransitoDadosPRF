drop view datatran_tratado
create view datatran_tratado as
with datatran as (
	select
		id,
		data_inversa,
		case 
			when data_inversa::date in ('2018-12-31', '2019-01-01', '2019-01-02', '2019-04-18', '2019-04-19', '2019-04-20', 
									    '2019-04-20', '2019-04-21', '2019-04-22', '2019-04-30', '2019-05-01', '2019-05-02', 
									    '2019-09-06', '2019-09-07', '2019-09-08', '2019-10-11', '2019-10-12', '2019-10-13', 
									    '2019-11-01', '2019-11-02', '2019-11-03', '2019-11-14', '2019-11-15', '2019-11-16', 
									    '2019-12-24', '2019-12-25', '2019-12-26', '2019-12-31', '2020-01-01', '2020-01-02', 
									    '2020-04-09', '2020-04-10', '2020-04-11', '2020-04-11', '2020-04-12', '2020-04-13', 
									    '2020-04-30', '2020-05-01', '2020-05-02', '2020-09-06', '2020-09-07', '2020-09-08', 
									    '2020-10-11', '2020-10-12', '2020-10-13', '2020-11-01', '2020-11-02', '2020-11-03', 
									    '2020-11-14', '2020-11-15', '2020-11-16', '2020-12-24', '2020-12-25', '2020-12-26', 
									    '2020-12-31', '2021-01-01', '2021-01-02', '2021-04-01', '2021-04-02', '2021-04-03', 
									    '2021-04-03', '2021-04-04', '2021-04-05', '2021-04-30', '2021-05-01', '2021-05-02', 
									    '2021-09-06', '2021-09-07', '2021-09-08', '2021-10-11', '2021-10-12', '2021-10-13', 
									    '2021-11-01', '2021-11-02', '2021-11-03', '2021-11-14', '2021-11-15', '2021-11-16', 
									    '2021-12-24', '2021-12-25', '2021-12-26', '2021-12-31', '2022-01-01', '2022-01-02', 
									    '2022-04-14', '2022-04-15', '2022-04-16', '2022-04-16', '2022-04-17', '2022-04-18', 
									    '2022-04-30', '2022-05-01', '2022-05-02', '2022-09-06', '2022-09-07', '2022-09-08', 
									    '2022-10-11', '2022-10-12', '2022-10-13', '2022-11-01', '2022-11-02', '2022-11-03', 
									    '2022-11-14', '2022-11-15', '2022-11-16', '2022-12-24', '2022-12-25', '2022-12-26', 
									    '2022-12-31', '2023-01-01', '2023-01-02', '2023-04-06', '2023-04-07', '2023-04-08', 
									    '2023-04-08', '2023-04-09', '2023-04-10', '2023-04-30', '2023-05-01', '2023-05-02', 
									    '2023-09-06', '2023-09-07', '2023-09-08', '2023-10-11', '2023-10-12', '2023-10-13', 
									    '2023-11-01', '2023-11-02', '2023-11-03', '2023-11-14', '2023-11-15', '2023-11-16', 
									    '2023-12-24', '2023-12-25', '2023-12-26', '2023-12-31', '2024-01-01', '2024-01-02', 
									    '2024-03-28', '2024-03-29', '2024-03-30', '2024-03-30', '2024-03-31', '2024-04-01', 
									    '2024-04-30', '2024-05-01', '2024-05-02', '2024-09-06', '2024-09-07', '2024-09-08', 
									    '2024-10-11', '2024-10-12', '2024-10-13', '2024-11-01', '2024-11-02', '2024-11-03', 
									    '2024-11-14', '2024-11-15', '2024-11-16', '2024-12-24', '2024-12-25', '2024-12-26')
			then 'Feriado'
			else 'Nao_feriado'
		end as flag_feriado,
		dia_semana,
		horario,
		case
			when horario between '00:00:00' and '05:59:59' then 1
			when horario between '06:00:00' and '11:59:59' then 2
			when horario between '12:00:00' and '17:59:59' then 3
			when horario between '18:00:00' and '23:59:59' then 4
			else 0
		end as turno,
		uf,
		br,
		km::varchar,
		municipio,
		causa_acidente,
		tipo_acidente,
		classificacao_acidente,
		fase_dia,
		sentido_via,
		condicao_metereologica,
		tipo_pista,
		tracado_via,
		case
			when uso_solo = 'Urbano' then 'Asfalto'
			else 'Rural'
		end as tipo_solo,
		pessoas,
		mortos,
		feridos_leves,
		feridos_graves,
		ilesos,
		ignorados,
		feridos,
		veiculos,
		latitude,
		longitude,
		split_part(regional, '-', 2) as regional,
		delegacia,
		uop,
		extract(year from data_inversa::date) as ano,
		extract(month from data_inversa::date) as mes,
		case
			when extract(month from data_inversa::date) = 1 then 'Janeiro'
			when extract(month from data_inversa::date) = 2 then 'Fevereiro'
			when extract(month from data_inversa::date) = 3 then 'Março'
			when extract(month from data_inversa::date) = 4 then 'Abril'
			when extract(month from data_inversa::date) = 5 then 'Maio'
			when extract(month from data_inversa::date) = 6 then 'Junho'
			when extract(month from data_inversa::date) = 7 then 'Julho'
			when extract(month from data_inversa::date) = 8 then 'Agosto'
			when extract(month from data_inversa::date) = 9 then 'Setembro'
			when extract(month from data_inversa::date) = 10 then 'Outubro'
			when extract(month from data_inversa::date) = 11 then 'Novembro'
			when extract(month from data_inversa::date) = 12 then 'Dezembro'
			else 'Mes_invalido'
		end as mes_extenso
	from public.datatran_prf
)

, ajuste as (
	select 
		datatran.*
		, case 	
			when turno = 1 then 'Madrugada'
			when turno = 2 then 'Manhã'
			when turno = 3 then 'Tarde'
			when turno = 4 then 'Noite'
		end as desc_turno
	from datatran
)

select * from ajuste


		
