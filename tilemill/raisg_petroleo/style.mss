//Map {background-color: #127;}


//PostGis connection - table: isa.petroleo @bd_raisg
//Note: export separately zooms 1-6(disable teaser) and 7-12(teaser enabled)
#isapetroleo{
  line-color:rgb(46,0,35);
  line-width:1;
  line-opacity:.21;
  line-comp-op:color-dodge;
  
  //en explotación
  [leyenda = "en explotación"]{
  polygon-comp-op: multiply;
  polygon-fill:#400E3C;
  polygon-opacity:.85;
  }
  
  [leyenda = "en exploración"]{
    polygon-fill:rgb(46,0,35);
    polygon-opacity:.85;
    polygon-comp-op: multiply;
  }

  [leyenda = "solicitud"]{
     polygon-fill:#4D2C45;
     polygon-opacity:.80;
     polygon-comp-op: multiply;
  }

  //potencial + sin info
  [leyenda = "potencial"],[leyenda = "sin información"]{
   polygon-fill:#572437; 
    polygon-opacity:.80;
    polygon-comp-op: multiply;
  }
}



