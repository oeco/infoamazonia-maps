/* 
Map {background-color:rgb(14,7,0);} 

#firefreqmerc { 
  raster-opacity:1; 
  raster-scaling:lanczos;
  } 
*/
#high_frp { 
  [zoom<=5] {
  	[frp >= 8266.67] { marker-width:4 ; }  
  	[frp >= 11033.34] { marker-width:6; }  
  	marker-width:2;
  	marker-line-width:1;
  	}
  [zoom=6] {
  	[frp >= 8266.67] { marker-width:6; }  
  	[frp >= 11033.34] { marker-width:9; }  
  	marker-width:3; 
  	marker-line-width:1.5;
  	}
  [zoom>=7] {
  	[frp >= 8266.67] { marker-width:10; }  
  	[frp >= 11033.34] { marker-width:15; }  
  	marker-width:5;
  	marker-line-width:2;
  	}
  marker-fill:#fd0;
  marker-fill-opacity:.75;  
  marker-line-opacity:.45;
  marker-line-color:#ff2c00;
  marker-allow-overlap:true; 
}
/*
#firms3691338835514 { 
  marker-width:2; 
  marker-fill:#ff2c00;
  [zoom<5] {marker-opacity:.05;}
  [zoom=5] {marker-opacity:.075;}
  [zoom>=6] {marker-opacity:.25;}
  marker-line-opacity:0;
  marker-allow-overlap:true; 
}
*/