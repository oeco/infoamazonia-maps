#countries {
  ::outline {
    line-color: #BBB;
    line-width: 1;
    line-join: round;
    opacity: 0.3;
  }
  polygon-fill: #fff;
  polygon-pattern-file:url("images/tela.png");
  opacity: 0.1;
  comp-op:multiply;
}

#limite-amazonia {
  line-color: #BBB;
  line-width: 1;
  line-join: round;
  polygon-pattern-file:url("images/telabig.png");
  opacity: 0.3;
  comp-op:multiply;
}

#inspections {
  //marker-width:5;
  marker-fill:#BB0404;
  marker-fill-opacity:0.8;
  marker-line-color:#800101;
  marker-line-width:2;
  marker-line-opacity:0.8;
  marker-allow-overlap:false;
  marker-ignore-placement:true;
  [Total >= 50] { marker-width:5; }
  [Total >= 100] { marker-width:10; }
  [Total >= 200] { marker-width:20; }
  [Total >= 300] { marker-width:30; }
  [Total >= 400] { marker-width:40; }
  [Total >= 500] { marker-width:50; }
  [Total >= 750] { marker-width:75; }
  [Total >= 1000] { marker-width:100; }
  [zoom <= 5] {
    [Total >= 300] { marker-width:30; }
  }
  marker-comp-op:darken;
}
