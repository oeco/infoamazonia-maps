/*Map {
  background-color:#000;
}*/

//NOTE: when updating terra-i shapefile layer, only change the layer ID name and keep the styles bellow
//check if year column name and columns names on the teaser are the same, otherwise update the new column names
//in the current update, I substituted the ID layer (from #ternobra to #amazonterrai04oct12) and had to change the 
//year column name (from "xtra1_YEAR" to "xtra1_YE_1") and column names on the teaser


//#ternobra = old terra-i layer 
#amazonterrai04oct12{ 
  polygon-opacity:1;
  
    [xtra1_YE_1 = 2012] { //if year=2012 paint as red
      polygon-fill:#ff2c00;
      line-color:#ff2c00;
      }
  polygon-fill:#ffd500; //otherwise, paint as yellow
    [zoom>3] {
        [zoom = 4] {line-opacity:.1; }
        [zoom = 5] {line-opacity:.25;}
        [zoom = 6] {line-opacity:.5; }
        [zoom = 7] {
          line-opacity:.25; 
          line-width:.25; }
        [zoom = 8] {
          line-opacity:.1;
          line-width:.25; }
        [zoom >= 9] { line-opacity: 0; }
        line-opacity:.75;
        line-color:#ffd500;
        line-width:.1;
      }
} 

