#recent{ [temp_c >= 47]{ 
   //nível toda ASul   
  marker-width:1.3; 
  marker-fill:#ff2c00;
  marker-line-opacity:0;
  marker-allow-overlap:true;  
  marker-opacity:.075;
  
  /*[zoom<6]// nível toda ASul   
   
    [frp>=0][frp<=20]  {marker-opacity:.015;}
    [frp>=21][frp<=300] {marker-opacity:.033;}
    [frp>=301][frp<=3257] {marker-opacity:.05;}*/
      
    [zoom=5] { marker-width:1.7;} 

  [zoom=6] 
    { marker-width:2;marker-opacity:.15; } 
    /*[frp>=0][frp<=20]  {marker-opacity:.05;}
    [frp>=21][frp<=300] {marker-opacity:.065;}
    [frp>=301][frp<=3257] {marker-opacity:.075;}*/
   
  
  [zoom>=7] //nível notícias
    {marker-width:3.3; marker-opacity:.25;} 
    /*[frp>=0][frp<=20]  { marker-width:2; marker-opacity:.095;}
    [frp>=21][frp<=300] { marker-width:2.3; marker-opacity:.15;}
    [frp>=301][frp<=3257] {marker-width:3.3; marker-opacity:.25;}*/
   
   
 [zoom>=9] //nível chão
    {marker-width:5; marker-opacity:.7;}
    /*[frp>=0][frp<=20]  { marker-width:2; marker-opacity:.025;}
    [frp>=21][frp<=300] { marker-width:3.3; marker-opacity:.5;}
    [frp>=301][frp<=3257] {marker-width:5; marker-opacity:.7;}*/
    
}
}