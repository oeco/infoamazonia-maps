-- PRODES data doesnot have a 'view_date' column. if you are doing the initial import of the PRODES data (2005-2011), you will need to create one so that you can append monthly import from DETER. note that this will not work once you have imported DETER data (as those tables will be missing the 'julday' and 'ano' columns. for that reason I've left them commented out below:

-- alter table desmata drop column if exists view_date; 
-- alter table desmata add column view_date date;
-- update desmata set view_date = to_date(ano, 'YYYY') + cast(julday as integer);

--------------------------

-- update desmata_clean

DROP TABLE IF EXISTS desmata_clean;
CREATE TABLE desmata_clean AS 
(select 
	gid, 
	geom as the_geom,
	ano,
    view_date,
	to_char(view_date, 'DD Month YYYY') as date, 
    to_char(round(area / 10000, 2), '999,999.99')  as area_en,
    to_char(round(area / 10000, 2), '999.999,99')  as area_p
from desmata order by date desc);


-- update last3months table
DROP TABLE IF EXISTS last3months;
CREATE TABLE last3months AS 
(SELECT 
	gid,
	geom as the_geom,
	view_date,
	to_char(view_date, 'DD Month YYYY') AS date,
	to_char(round(area / 10000, 2), '999,999.99') AS area_en
FROM desmata 
WHERE view_date > (SELECT view_date FROM desmata WHERE view_date IS NOT NULL ORDER BY view_date DESC LIMIT 1) - INTERVAL '03 months');


-- index geometry for new tables, desmata_clean ('dc') and last3months ('l3')
DROP INDEX dc_the_geom_gist;
CREATE INDEX dc_the_geom_gist ON desmata_clean USING gist (the_geom);

DROP INDEX l3_the_geom_gist;
CREATE INDEX l3_the_geom_gist ON last3months USING gist (the_geom);

-- index tooltip columns for faster, better interactivity
DROP INDEX dc_date_index;
DROP INDEX dc_area_index;
CREATE INDEX dc_date_index ON desmata_clean (date);
CREATE INDEX dc_area_index ON desmata_clean (area_p);

-- index tooltip columns for quicker render times in tilemill. probably less necessary. 
DROP INDEX l3_date_index;
DROP INDEX l3_area_index;
CREATE INDEX l3_date_index ON last3months (date);
CREATE INDEX l3_area_index ON last3months (area_p);
