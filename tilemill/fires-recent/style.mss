#recent { 
  marker-width:2; 
  marker-fill:#ff2c00;
  [zoom<5] {marker-fill-opacity:.05;}
  [zoom=5] {marker-fill-opacity:.075;}
  [zoom>=6] {marker-fill-opacity:.25;}
  marker-line-width:0;
  marker-allow-overlap:true;  
}