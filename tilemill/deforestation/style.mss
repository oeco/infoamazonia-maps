#desmatamento {
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
  polygon-opacity:1; 
  polygon-fill:#ffd500;
}

#desm91 { polygon-pattern-file: url(img/forest_hatch.png);}

#last3months {
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
    line-color:#ff2c00;
    line-width:.1;
  }
  polygon-opacity:1; 
  polygon-fill:#ff2c00;
}