//Map {background-color: #000;}


//PostGis connection - table: isa.mineria_pl @bd_raisg
//Note: export separately zooms 1-6(disable teaser) and 7-12(teaser enabled)
#isamineriapl{
     [leyenda = "en explotación"],
     [leyenda = "en exploración"],
     [leyenda = "en exploración/en explotación"]{
          polygon-fill:rgba(5,248,215,.8);
          polygon-fill:.5;
          polygon-opacity:1;  
              [zoom > 6]{
                  line-width:.3;
                  line-opacity:1;
                  line-color:rgba(6,4,3,1);
                }
          }

  
      [leyenda = "solicitud"]{  
 			 polygon-fill:rgba(3,115,133,1);
  			 polygon-opacity:1;
               [zoom > 6] {
                        polygon-fill:rgba(3,115,133,1); //.88
                        polygon-opacity:.91;
   						line-color:lighten(rgba(3,115,133,.88),50%);
                        line-width:.4;
                        line-opacity:.47;
  						}
				}
  
  	  [leyenda = "potencial"],
      [leyenda = "sin información"]{ 
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


