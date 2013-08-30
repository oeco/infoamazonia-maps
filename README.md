# InfoAmazonia maps

This repository hosts the TileMill projects for the maps available at [infoamazonia.org](http://infoamazonia.org). 

Please follow the instructions to generate these maps locally:

1. [Download](#download)
2. [Adding a map project to TileMill](#adding-a-map-project-to-tilemill)
3. Map data
	1. [Deforestation](#deforestation)
	2. [Deforestation from Imazon SAD](#deforestation-data-from-imazon-sad)
	3. [Fires](#fires)
	4. [Mining](#mining)
4. [Other info](#other-info)

## Download

Download this [zipfile](https://github.com/oeco/infoamazonia-maps/archive/master.zip) or clone the repository on your computer:

	git clone https://github.com/oeco/infoamazonia-maps.git

## Adding a map project to TileMill

The map projects are located in `tilemill` folder and you can copy them to the TileMill project directory, often located at `~/Documents/Mapbox/project`. Alternatively, you can create a [symlink](http://en.wikipedia.org/wiki/Symbolic_link) to your local git repository. For example:

	ln -s ~/path-to/oeco-amazonia/maps-src/tilemill/deforestation ~/Documents/Mapbox/project/deforestation

This will let you use git to track changes made in TileMill.

An effort has been made to point all non-postgres layers at directories in the dropbox, minimizing set up time. You can move data layers into git-tracked directories but be sure to use 'git checkout' to make sure they're not pushed to the GitHub repo - this will needlessly slow down everyone's pulls, especially as this data already exists in the dropbox. 

Many layers are powered by a postgis database that allows reformatting of dates, area numbers, etc. To set up this data base run from your command (bash) shell:

	createdb amazonia
	psql -d amazonia -c "CREATE EXTENSION postgis"
	
All of this data I've included in a database dump calle 'desmata.sql'. A zipped version can be found in the dropbox here:

	~Dropbox/InfoAmazonia_data/1_environmentalLayers/deforestation/amazonia.dump.zip

Run this command to populate the database	

	psql -d amazonia -f amazonia.dump

NOTE: this assumes you are running postgis2.0

## Deforestation

Historical deforestation is powered by the 'desm91' shapefile that lives here:
	
	~/Dropbox/InfoAmazonia_data/1_environmentalLayers/deforestation/IBGE/deforestation_1991_shp/desm91.shp

More recent deforestation is powered by the postgis database, for the above reasons but also so that 'last3months' table retrieves the last 3 months of deforestation data, regardless of when the last import of data was. The desmata.sql database dump includes data from jan 2005 to mar 2012. 

You should now be able to open the project in TileMill.

### Updating deforestation

To update the table, download the latest DETER update (the link is on [InfoAmazonia](http://infoamazonia.org/data/#deter-monthly) ). Then reproject :

	ogr2ogr -s_srs EPSG:4291 -t_srs EPSG:900913 deter_june2012.shp deter_201206.shp

Now you can run the following command from you bash shell (this example will import the DETER data from june 2012):

	shp2pgsql -D -a deter_june2012.shp desmata | psql -d amazonia
	
NOTE: Be sure to include the `-a` option, as this will _append_ the monthly data rather than overwrite the existing table with the update! 

Once the import is complete you will need to update and optimize the tables in your database. Run the following command included in `maps-src`.

	psql -d amazonia -f desmata-update.sql 

## Deforestation data from Imazon SAD

Imazon publishes monthly deforestation alerts at this page:

http://www.imazongeo.org.br/doc/downloads.php

In the `tile/deforestation-sad/data` folder you'll find a file named `alerts.shp`, which has all Imazon SAD information to date.

If you need to update this file, follow the instructions:

1) Download the latest file and unzip it to `data` folder. You should have only two shapefiles at you data folder, `alerts.shp` and the new one from Imazon SAD;<br>
2) Open QGIS and select menu 'Vector' / 'Data Management Tools' / 'Merge Shapefile to One';<br>
3) Select the `data` folder as the input directory;<br>
4) Save the output shapefile as `alerts-new.shp` at `data` folder;<br>
5) Open this file in QGIS, and use the code bellow in the the field calculator to update `area_ha` field: <br>

```
	CASE 
		WHEN AREA > 0 THEN toReal(toInt(AREA * 10000)) /100
		WHEN area_km2 > 0 THEN toReal(toInt(area_km2 * 10000)) /100
		WHEN area_km2_ > 0 THEN toReal(toInt(area_km2_ * 10000)) /100    
		WHEN F_AREA > 0 THEN toReal(toInt(F_AREA * 10000)) /100
		WHEN Shape_Area > 0 THEN toReal(toInt(Shape_Area * 10000)) /100
	END
```
6) Finally, in QGIS, save `alerts-new.shp` as `alerts.shp`, overwriting the old file;<br>
7) Regenerate the map at TileMill;<br>
8) Upload it to Mapbox;<br>
9) Delete old files and commit changes to this repository.<br>

If you need to download all source files again, run these commands inside `tilemill\deforestion-sad\data` folder:

	wget -r -nd -A "imazon_sad_desmatamento*.zip" -P sources http://www.imazongeo.org.br/doc/downloads.php
	unzip -j sources/\*.zip -d sources-expanded -j

You'll find the shapefiles uncompressed in `tilemill\deforestion-sad\data\sources-expanded`.

## Fires

This project was migrated to a separate repository:

https://github.com/oeco/tm-fires

## Mining (and protected areas)

- After installing you will need to move the `mining.zip` file that exists at `~/Dropbox/InfoAmazonia_data/1_environmentalLayers/` to `oeco-amazonia/maps-src/tilemill/mining/layers/` and then unzip it. 
- to regenerate the map, you will need an older developer build (some of the features this map uses have been in rapid development). specifically you'll need [Tilemill v0.9.1.6x](https://github.com/downloads/mapbox/tilemill/TileMill-0.9.1.66-compositing-preview.zip) version.
- the project should now work. be careful not to commit the data layers, as they will weight down the repo.

## Other info

Legends should already be saved in TileMill projects, but have also been saved as an html file at `oeco-amazonia/maps-src/legends-src.html`. The same is true of tooltips, which live at `oeco-amazonia/maps-src/tooltip-src.html`
