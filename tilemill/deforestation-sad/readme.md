# Map: Deforestation data from Imazon SAD

This is the TileMill project for deforestation data from Imazon SAD.

## How to update the map

Follow the steps:

1. Download the latest file at: http://www.imazongeo.org.br/doc/downloads.php

2. Create new folder at `data` directoy following the partern 'data/{year}-{month}'. For example, folder for April 2013 should be named `2013-04`.

3. Expand the zip file downloaded at this diretory.

4. Imazon doesn't follow a convention for column names at the shapefile. The map uses three attributes: area, month and year. Follow the steps to create new columns which TileMill will understand:

  1. Open the shapefile with QGIS;
  2. Right-click the layer and open attribute table;
  3. Enable 'Edit mode' by clicking at the pen button bellow or type `Ctrl+E`;
  4. Open 'Field Calculator' by clicking at calculator button or type `Ctrl+I`;
  5. Create a new field name `area` by typing the name, choosing type 'real' (setting lenght 20, precision 10) and adding current field name at expression textbox (for 2013, it's 'Shape_area');
  6. Create a new field name `area` by typing the name, choosing type 'real' (setting lenght 20, precision 10) and adding current field name at expression textbox (should be 'Shape_area');
  7. Create a new field name `year` by typing the name, choosing type 'integer' and adding current field name at expression textbox (should be 'ano');
  8. Create a new field name `month` by typing the name, choosing type 'integer' and adding current field name at expression textbox (should be 'mes');

5. At TileMill, add a new layer for this file, following naming convention already used. Make the file path relative by removing everything before 'data/2013...', and set class to 'deforestation_alerts';

6. Check if layer is renderend properly and upload it to Mapbox;

7. Commit your changes to this repository.
