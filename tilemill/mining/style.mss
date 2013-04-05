// Filename: forest-clip-dark.tif
#forestclipdark {
  raster-opacity:1;
  [zoom >= 7] { raster-scaling:lanczos; } 
  [zoom < 6] {raster-scaling:bilinear8; }
}
// Filename: simp-mask-areas.shp
// Note: #maskinglayer and #topmask use the same shapefile. I included the file twice to avoid confusion. 
#maskinglayer {
  line-color:transparent;
  line-width:0.8;
  polygon-opacity:.6;
  polygon-fill:black;
  ::lines { 
    line-color:transparent;
    line-opacity:.6;
    line-width:.8;
    }
  }
//file: mining-combined.shp 
//Note: To display with correct encoding in TileMill, add encoding="iso-8859-15" to the Advanced field in the TileMill "Add a layer" window. 
#miningcombined {
  polygon-fill:transparent;
  line-color:transparent;
  line-opacity:.1;
  line-width:.1;
  [zoom > 6] {
    line-width:.5;
    line-opacity:.21;
    }
  //green/blue mining concessions
   [FASE = "CONCESSÃO DE LAVRA"],
   [FASE = "REQUERIMENTO DE LAVRA"] {
     polygon-fill:rgba(5,248,215,.8);
     line-color:rgba(5,248,215,.8);
     polygon-fill:.5;
     line-width:.5;
      line-opacity:.8;
     
     [zoom > 6] {
        line-width:.3;
        line-opacity:1;
        line-color:rgba(6,4,3,1);
    }
    }
  //dark blue ctive small-scale mining
   [FASE = "LAVRA GARIMPEIRA"],
   [FASE = "REQUERIMENTO DE LAVRA GARIMPEIRA"] {    
     polygon-fill:rgba(1,48,56,8);
     polygon-opacity:1;
     line-color:lighten(rgba(196,143,229,.7),50%);// ;//lighten(rgba(247,223,9,1),50%);
     line-opacity:.47;
     line-width:.1;
    [zoom <= 6] { line-width:.1; }
    [zoom > 6] { line-width:.4; line-color:rgba(1,48,56,8);  }
  ::lines {
      line-color:rgba(1,48,56,8);
      line-opacity:1;
      line-width:.4;
      [zoom > 6] {
       line-width:.4;
       line-color:lighten(rgba(196,143,229,.7),50%);// ;//lighten(rgba(247,223,9,1),50%);
       line-opacity:.47;
      }
     }
   }
    
  //light blue research/mining exploration
  [FASE = "AUTORIZAÇÃO DE PESQUISA"],
  [FASE = "REQUERIMENTO DE PESQUISA"] { 
    polygon-opacity:1;
     line-color:rgba(3,115,133,.88);
     line-width:.4;
     line-opacity:.91;
     polygon-fill:rgba(3,115,133,1);
    [zoom > 6] {
      line-width:.4;
      line-opacity:.47;
      line-color:lighten(rgba(3,115,133,.88),50%);
      polygon-fill:rgba(3,115,133,.88); 
      polygon-opacity:.91;
    }
   }
  [zoom < 5] {
      [FASE = "AUTORIZAÇÃO DE PESQUISA"],
      [FASE = "REQUERIMENTO DE PESQUISA"],
      [FASE = "LAVRA GARIMPEIRA"],
      [FASE = "REQUERIMENTO DE LAVRA GARIMPEIRA"],
      [FASE = "CONCESSÃO DE LAVRA"],
      [FASE = "REQUERIMENTO DE LAVRA"] {
        polygon-fill:rgba(3,115,133,1);
        line-color:rgba(3,115,133,1);
        }
   }
}