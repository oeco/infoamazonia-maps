#stateBorders {
  line-width:0.5;
  line-color: #3f3d3d;
  polygon-opacity:0;
  polygon-fill:#ae8;

  [zoom >= 5][zoom < 7]{
        ::labels {
          text-name:"[NM_ESTADO]";
          text-face-name:"Arial Bold";
          text-allow-overlap:true;
          text-size:12;
          text-fill:#ffffff;
          text-halo-fill:rgba(0,0,0,1);
          text-halo-radius:0.1;
          text-placement: point;
          text-placement-type: simple;
          text-min-distance: 1000;
           // text-placements: "N,S,E,W,NE,SE,NW,SW";
          text-dx:0;
          text-dy:13; 
      
            [ID = 1] { text-dx:9;text-dy:27;}//Rondônia, Maranhão, TO  
            [ID = 2] { text-dx:10;text-dy:02;}//Acre
            [ID = 3] { text-dy:15;}//Amazonas e MT
            [ID = 4] { text-dy:5;}//Roraima
            //[ID = 5] { text-dx:1;}//PA
          }      
 	 }
  
  
          [zoom = 7]{
                ::labels {
                  text-name:"[NM_ESTADO]";
                  text-face-name:"Arial Bold";
                  text-allow-overlap:true;
                  text-size:16;
                  text-fill:#ffffff;
                  text-halo-fill:rgba(0,0,0,1);
                  //text-halo-radius:0.5;
                  text-placement: point;
                  text-placement-type: simple;
                  text-min-distance: 1000;
                   // text-placements: "N,S,E,W,NE,SE,NW,SW";
                  text-dx:0;
                  text-dy:13; 
              
                    [ID = 1] { text-dx:0;text-dy:25}//Rondônia, Maranhão, TO  
                    [ID = 2] { text-dx:1;text-dy:02;}//Acre
                    [ID = 3] { text-dy:15;}//Amazonas e MT
                    [ID = 4] { text-dy:0;}//Roraima
                    [ID = 6] { text-dy:20;}//Amapá
                    //[ID = 5] { text-dx:1;}//PA*/
                  }      
             }
  
             [zoom >= 8]{
                ::labels {
                  text-name:"[NM_ESTADO]";
                  text-face-name:"Arial Bold";
                  text-allow-overlap:true;
                  text-size:18;
                  text-fill:#ffffff;
                  text-halo-fill:rgba(0,0,0,1);
                  //text-halo-radius:0.5;
                  text-placement: point;
                  text-placement-type: simple;
                  text-min-distance: 1000;
                   // text-placements: "N,S,E,W,NE,SE,NW,SW";
                  text-dx:0;
                  text-dy:0; 
              
      			 [ID = 6] { text-dy:20;}//Amapá
                   /* [ID = 1] { text-dx:0;text-dy:25}//Rondônia, Maranhão, TO  
                    [ID = 2] { text-dx:1;text-dy:02;}//Acre
                    [ID = 3] { text-dy:15;}//Amazonas e MT
                    [ID = 4] { text-dy:0;}//Roraima
                   
                    //[ID = 5] { text-dx:1;}//PA*/
                  }      
             }
  

  
  			 [zoom >= 10]{
                ::labels {
                  text-name:"[NM_ESTADO]";
                  text-face-name:"Arial Bold";
                  text-allow-overlap:true;
                  text-size:20;
                  text-fill:#ffffff;
                  text-halo-fill:rgba(0,0,0,1);
                  //text-halo-radius:0.5;
                  text-placement: point;
                  text-placement-type: simple;
                  text-min-distance: 1000;
                   // text-placements: "N,S,E,W,NE,SE,NW,SW";
                  text-dx:0;
                  text-dy:0; 
              
      			 [ID = 6] { text-dy:20;}//Amapá
      				}
      			}
      
      
}



