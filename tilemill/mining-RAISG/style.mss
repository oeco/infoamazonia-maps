// Filename: forest-clip-dark.tif
#forestclipdark {
  raster-opacity:1;
  [zoom >= 7] { raster-scaling:lanczos; } 
  [zoom < 6] {raster-scaling:bilinear8; }
}


// Filename: symdiffglobal.shp
#symdiffglobal { //mask over National Protected Areas, black transparency over the areas which are not ANP
line-color:transparent;
  line-width:0.8;
  polygon-opacity:.5;//.6
  polygon-fill:black;
  ::lines { 
    line-color:transparent;
    line-opacity:.6;
    line-width:.8;
    }
}

// Filename: test.sqlite
#protectedareas { // National Protected Areas additional layer for labeling
  line-color:transparent;
  line-width:0;
  polygon-opacity:0;
  polygon-fill:transparent;

    [zoom=8]{
     point-file:url(img/park2-12greenStroke.png);
     //composite-operation:color-dodge;
     point-allow-overlap: true;
    point-placement: interior;
      ::labels{
          text-name:"[nombre]";
          text-face-name:"Helvetica Neue Bold";
          text-size: 13px;
          text-fill: #047d30;
         // text-halo-fill:#2d2d2d;//
         // text-halo-radius:.1;
          text-placement: interior;
          //text-min-distance: 100;
          //composite-operation:color-dodge;
      text-allow-overlap: true;  
      text-line-spacing:20;
          }
  }

      [zoom=9]{
     point-file:url(img/park2-18greenStroke.png);
     point-allow-overlap: true;
    point-placement: interior;
        ::labels{
          text-name:"[nombre]";
          text-face-name:"Helvetica Neue Bold";
          text-size: 16px;
          text-fill: #047d30;
          text-placement: interior;
          text-allow-overlap: true; 
          //text-min-distance: 100;
          text-line-spacing:26;
      //composite-operation:color-dodge;
          } 
    }
  
    
    [zoom>=10]{
      point-file:url(img/park2-30greenStroke.png);
     point-allow-overlap: true;
    // composite-operation:color-dodge;
      point-placement: interior;
      ::labels{
        text-name:"[nombre]";
        text-face-name:"Helvetica Neue Bold";
        text-size: 18px;
        text-fill: #047d30;
        text-placement: interior;
        //text-min-distance: 100;
           text-line-spacing:44;
   
       text-allow-overlap: true;
        }
    }
  
  
  #isamineriapl{
     [leyenda = "en explotación"],
     [leyenda = "en exploración"],
     [leyenda = "en exploración/en explotación"],{
          polygon-fill:rgba(5,248,215,.8);
          polygon-fill:.5;
          polygon-opacity:1;
          //line-color:rgba(5,248,215,.8);
          //line-width:.5;
          //line-opacity:.8;    
              [zoom > 6]{
                  line-width:.3;
                  line-opacity:1;
                  line-color:rgba(6,4,3,1);
                }
          }

  
      [leyenda = "solicitud"]{  
 			 polygon-fill:rgba(3,115,133,1);
  			 polygon-opacity:1;
    		 //line-color:rgba(3,115,133,.88);
       		 //line-width:.4;
        	 //line-opacity:.91;
               [zoom > 6] {
                        polygon-fill:rgba(3,115,133,1);
                        polygon-opacity:.91;
   						line-color:lighten(rgba(3,115,133,.88),50%);
                        line-width:.4;
                        line-opacity:.47;
  						}
				}
  
  	  [leyenda = "potencial"],
      [leyenda = "sin información"],{ 
     	 polygon-fill:rgba(1,48,56,8);
         polygon-opacity:1;
         line-color:lighten(rgba(196,143,229,.7),50%);
         line-opacity:.47;
         line-width:.1; 
          [zoom > 6] {
                   line-width:.4;
                   line-color:rgba(1,48,56,8);}
            ::lines {
               line-color:rgba(1,48,56,8);
               line-opacity:1;
               line-width:.4;
                 [zoom > 6] {
                 line-width:.4;
                 line-color:lighten(rgba(196,143,229,.7),50%);
                 line-opacity:.47; }
     	     }
  
       }
}
  
  
  
}  



