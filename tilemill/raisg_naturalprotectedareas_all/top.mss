// Filename: simp-mask-areas.shp
//#topmask
#symdiffglobal2{ //mascara sobre as areas de proteção, apenas contornos
  line-color:#c0bbbb;
  //line-comp-op:color-dodge;
  composite-operation:color-dodge;
  line-width:.4;
  line-opacity:.7;
  
  [zoom > 5] {
  line-color:#c0bbbb;
  line-width:1;
  line-opacity:.32;
  //line-comp-op:color-dodge;
  composite-operation:color-dodge;
  polygon-fill:transparent;
    }
    ::top5[zoom = 5] {
      line-width:.7;
      line-opacity:.41;
      //line-comp-op:color-dodge;
      composite-operation:color-dodge;
      polygon-fill:transparent;
        line-color:#c0bbbb;
      }
    ::top[zoom >= 6] {
     [zoom = 6] { line-width:1.5;}
     [zoom > 6] { line-width:2; }
      line-opacity:.71;
      //line-comp-op:color-dodge;
      composite-operation:color-dodge;
      polygon-fill:transparent;
        line-color:#c0bbbb;
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
  
