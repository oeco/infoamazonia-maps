
# create postgis database

# createdb amazonia2 -U postgres
# psql -d amazonia2 -U postgres -c "create extension postgis"

# import slaughterhouses 
shp2pgsql -D ~/Dropbox/InfoAmazonia_data/2_POIs/Slaughter_Houses/imazon_slaughterhouses/frigorificos.shp  cows | psql -d amazonia2

# import timber clusters
shp2pgsql -D -W "WINDOWS-1252" ~/Dropbox/InfoAmazonia_data/2_POIs/Timber_Clusters/imazon_polos_madeireiros/polos_madeireiros.shp trees | psql -d amazonia2

# import dams
shp2pgsql -D -W "WINDOWS-1252" ~/Dropbox/InfoAmazonia_data/2_POIs/Hydro\ Dams/Usina.shp dams | psql -d amazonia2


