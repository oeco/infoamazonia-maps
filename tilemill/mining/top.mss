// Filename: simp-mask-areas.shp
#topmask {
  line-color:#fff;
  composite-operation:color-dodge;
  line-width:.4;
  line-opacity:.7;
  [zoom > 5] {
  line-color:#fff;
  line-width:10;
  line-opacity:.32;
  composite-operation:color-dodge;
  polygon-fill:transparent;
    }
  ::top5[zoom = 5] {
    line-width:.7;
    line-opacity:.41;
    composite-operation:color-dodge;
    polygon-fill:transparent;
      line-color:#fff;
    }
  ::top[zoom >= 6] {
   [zoom = 6] { line-width:1.5;}
   [zoom > 6] { line-width:2; }
    line-opacity:.71;
    composite-operation:color-dodge;
    polygon-fill:transparent;
      line-color:#fff;
    }
   [zoom < 6] {
    line-width:.6;
    line-opacity:.4;
   }
   [zoom < 5] {
     line-width:.5;
     line-opacity:.4;
    }
    }

//Filename: EixoDutoviario.shp
#eixodutoviario {
    line-color:#550000;
    line-width:1.85;
    [zoom <= 3] { line-width:.71;}
    line-opacity:.6;
    line-join:round;
}