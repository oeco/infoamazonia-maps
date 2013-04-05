-- create top table with 200 most intense fires 
DROP TABLE IF EXISTS high_frp;
CREATE TABLE high_frp as 
(SELECT 
	geom as the_geom,
	gid,       
	frp,
	to_char(frp, '999,999.9') as frp_p,       
	to_char(acq_date, 'YYYY-MM-DD') as acq_date,
	round((brightness - 273.15), 2) as temp_c      
FROM fires ORDER BY frp DESC LIMIT 200);

-- create table for the last month
DROP TABLE IF EXISTS recent;
CREATE TABLE recent as 
(SELECT 
	geom as the_geom,
	gid,       
	frp,
	to_char(frp, '999,999.9') as frp_p,
	to_char(acq_date, 'YYYY-MM-DD') as acq_date,
	round((brightness - 273.15), 2) as temp_c 
FROM fires
WHERE acq_date > (SELECT acq_date FROM fires ORDER BY acq_date DESC LIMIT 1) - INTERVAL '1 months')
ORDER BY acq_date DESC;

-- index everything!
CREATE INDEX geom_recent_index ON recent USING gist (the_geom);
CREATE INDEX date_recent_index ON recent (acq_date);
CREATE INDEX frp_p_recent_index ON recent (frp_p);
CREATE INDEX temp_recent_index ON recent (temp_c);

CREATE INDEX geom_high_frp_index ON high_frp USING gist (the_geom);
CREATE INDEX date_high_frp_index ON high_frp (acq_date);
CREATE INDEX frp_p_high_frp_index ON high_frp (frp_p);
CREATE INDEX temp_high_frp_index ON high_frp (temp_c);
