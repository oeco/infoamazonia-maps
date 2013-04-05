-- recent intensity fires

(select
	gid,
	the_geom,
	to_char(acq_date, 'YYYY-MM-DD') as acq_date,
	round((brightness - 273.15), 2) as temp_c,
	frp,
	to_char(frp_p, '999,999.99') as frp_p
from may_fires) as data


-- deforestation 2005-2011 

(select
*,
to_char(view_date, 'YYYY-MM-DD') as date_c
from desmata_clean) as DATA

------------ pois
dbname=amazonia host=localhost user=postgres

-- dams

(SELECT
gid,
the_geom,
nome,
estagio,
codmun1,
munic1,
rio,
to_char(p_out_kw, '999,999,999') as output,
to_char(ainud_km2_, '9,999.99') as area_inud,
proprietar
FROM dams) AS DATA

-- cows

(SELECT 
gid,
the_geom,
initcap(nome_munic) as nome_munic, 
to_char(c_abate, '999,999') as output
FROM cows) AS DATA

-- trees

(SELECT
gid,
the_geom,
polo, 
to_char(producao, '9,999,999') as producao 
from trees) AS DATA 

