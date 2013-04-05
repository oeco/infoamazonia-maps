# TileMill Projects

Most TileMill projects for the maps on infoamazonia site live in `/oeco-amazonia/maps-src/tilemill/`. Exceptions include 

- forest-height map
- fire-frequency heatmap
- osm roads and labels

OSM borders + labels were left out due to the complex nature of the project, and the unlikely event that the border or labels will need to be frequently updated. 


## Install

You can either copy each of the projects in this directory to TileMill project directory (default: `~/Documents/Mapbox/project`), or you can create [symlinks](http://en.wikipedia.org/wiki/Symbolic_link) to the projects as they exist in the GitHub repo. For example

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

To update the table, download and reproject the latest DETER update:

	ogr2ogr -s_srs EPSG:4291 -t_srs EPSG:900913 deter_june2012.shp deter_201206.shp

Now you can run the following command from you bash shell (this example will import the DETER data from march 2012):

	shp2pgsql -D -a deter_june2012.shp desmata | psql -d amazonia
	
NOTE: Be sure to include the `-a` option, as this will _append_ the monthly data rather than overwrite the existing table with the update! 

Once the import is complete you will need to update and optimize the tables in your database. Run the following command included in `maps-src`.

	psql -d amazonia -f desmata-update.sql 

## Fires

These projects are also is being powered by the postgres database. They are broken out into separate projects so preserve interactivity for both the high-intensity (yellow) layer, and the recent fires layer (red). Data for both these layer has been included in the desmata.sql dump. 

### Updating Fires

You can now import it with shp2pgsql. Again, note the `-a` flag that appends this data to the fires table rather than overwriting the existing table. Read more about shp2pgsql [here](http://www.bostongis.com/pgsql2shp_shp2pgsql_quickguide_20.bqg).

	shp2pgsql -D -a july-merc.shp fires | psql -d amazonia
	
Before your changes will take a effect you will need to the `update-fires.sql` script:

	psql -d amazonia -f update-fires.sql

After importing the FIRMS data, and running the update-fires.sql script, tilemill project for both high-intensity fires and recent fires should work. 

__OPTIONAL:__ To load historical data yourself [re-projecting](http://mapbox.com/tilemill/docs/guides/optimizing-shapefiles/) your NASA shapefile to Google Mercator you will need to upload it with shp2pgsql. Be sure to call the table 'fires' as in the import command below:

	shp2pgsql -D -a firms1961337193914.shp fires| psql -d amazonia

again, run the optimization script in `/maps-src`. 

	psql -d amazonia -f update-fires.sql


## Mining (and protected areas)

- After installing you will need to move the `mining.zip` file that exists at `~/Dropbox/InfoAmazonia_data/1_environmentalLayers/` to `oeco-amazonia/maps-src/tilemill/mining/layers/` and then unzip it. 
- to regenerate the map, you will need an older developer build (some of the features this map uses have been in rapid development). specifically you'll need [Tilemill v0.9.1.6x](https://github.com/downloads/mapbox/tilemill/TileMill-0.9.1.66-compositing-preview.zip) version.
- the project should now work. be careful not to commit the data layers, as they will weight down the repo.

# Legends + Tooltips

Legends should already be saved in TileMill projects, but have also been saved as an html file at `oeco-amazonia/maps-src/legends-src.html`. The same is true of tooltips, which live at `oeco-amazonia/maps-src/tooltip-src.html`