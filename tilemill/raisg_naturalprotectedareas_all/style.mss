/* // Filename: forest-clip-dark.tif
#forestclipdark {
  raster-opacity:1;
  [zoom >= 7] { raster-scaling:lanczos; } 
  [zoom < 6] {raster-scaling:bilinear8; }
}*/


//Note: for teaser interactivity, export separately zooms 7-12(teaser enabled) from
//each of the 3 datasets (nacionales, deptales, bosques ecuatorianos), choosing the 
//correspondent layer under the teaser tab. Otherwise, export all 3 datasets together from zoom 1-12 with teaser disabled.


//PostGis connection - table: isa.anpnacionales @bd_raisg
#anpnacionales{
 polygon-fill:#42b014;//#000;
 polygon-opacity:.1;
 polygon-comp-op:color-dodge;
 line-color:#047d30;
 line-comp-op:color-dodge;
 // composite-operation:color-dodge;

    [zoom>=7]{line-width:2;line-opacity:.51;line-comp-op:color-dodge;  
    
    [zoom=8]{
     point-file:url(img/park2-12greenStroke.png);
     point-placement: interior;
     point-allow-overlap: true;
     point-comp-op:color-dodge;
     //composite-operation:color-dodge;
      ::labels{ [OGC_FID!=103]
        {
          text-name:"[nombre]";
          text-face-name:"Helvetica Neue Bold";
          text-size: 13px;
          text-fill: #047d30;
          text-placement: interior;
          text-allow-overlap: false;  
          text-line-spacing:30;
          text-min-distance:3;
          text-comp-op:color-dodge;

          }  }
  }

      [zoom=9]{
     point-file:url(img/park2-18greenStroke.png);
     point-placement: interior;
     point-allow-overlap: true;
     point-comp-op:color-dodge;
     //composite-operation:color-dodge;
        ::labels{    
          [OGC_FID!=87][OGC_FID!=88][OGC_FID!=89][OGC_FID!=90][OGC_FID!=91][OGC_FID!=92][OGC_FID!=93][OGC_FID!=94]
          [OGC_FID!=95][OGC_FID!=96][OGC_FID!=97][OGC_FID!=98][OGC_FID!=99][OGC_FID!=103][OGC_FID!=138][OGC_FID!=19]
        [OGC_FID!=48][OGC_FID!=49][OGC_FID!=50][OGC_FID!=51][OGC_FID!=52][OGC_FID!=53][OGC_FID!=137][OGC_FID!=413]
        {
          text-name:"[nombre]";
          text-face-name:"Helvetica Neue Bold";
          text-size: 15px;
          text-fill: #047d30;
          text-placement: interior;
          text-allow-overlap: false; 
          text-line-spacing:33;//26;
          text-min-distance:1;
          text-comp-op:color-dodge;
         [OGC_FID=104]{text-size:14; text-dx:1} //Monumento Natural Sierra Marutan√≠ 
         [OGC_FID=139]{text-size:12;}  //Jaua...
         [OGC_FID=141]{text-size:15;text-dx:1;} //Pq Nacional Serrania La Neblina
        
      }}
      }
  
        [zoom=10]{
        point-file:url(img/park2-18greenStroke.png);
        point-placement: interior;
        point-allow-overlap: true;
        point-comp-op:color-dodge;
        //composite-operation:color-dodge;
        ::labels{
          [OGC_FID!=87][OGC_FID!=88][OGC_FID!=89][OGC_FID!=90][OGC_FID!=91][OGC_FID!=92][OGC_FID!=93][OGC_FID!=94]
          [OGC_FID!=95][OGC_FID!=96][OGC_FID!=97][OGC_FID!=98][OGC_FID!=99][OGC_FID!=103][OGC_FID!=138][OGC_FID!=19]
          [OGC_FID!=48][OGC_FID!=49][OGC_FID!=50][OGC_FID!=51][OGC_FID!=52][OGC_FID!=53][OGC_FID!=54][OGC_FID!=137][OGC_FID!=413]
          [OGC_FID!=105][OGC_FID!=106][OGC_FID!=107][OGC_FID!=108][OGC_FID!=109][OGC_FID!=110][OGC_FID!=111][OGC_FID!=112][OGC_FID!=113][OGC_FID!=114][OGC_FID!=115][OGC_FID!=116][OGC_FID!=117]
          [OGC_FID!=121][OGC_FID!=122][OGC_FID!=123][OGC_FID!=124][OGC_FID!=125][OGC_FID!=126][OGC_FID!=127][OGC_FID!=128]
          [OGC_FID!=129][OGC_FID!=131][OGC_FID!=132][OGC_FID!=133][OGC_FID!=134][OGC_FID!=135][OGC_FID!=136][OGC_FID!=137]        
          [OGC_FID!=64][OGC_FID!=65][OGC_FID!=66][OGC_FID!=67][OGC_FID!=68][OGC_FID!=69][OGC_FID!=70][OGC_FID!=71][OGC_FID!=72][OGC_FID!=73][OGC_FID!=74] 
  
        {
            text-name:"[nombre]";
            text-face-name:"Helvetica Neue Bold";
            text-size: 16px;
            text-fill: #047d30;
            text-placement: interior;
            text-allow-overlap: false; 
            text-line-spacing:44;//26;
            text-min-distance:1;
            text-comp-op:color-dodge;
            //composite-operation:color-dodge;
        
           [OGC_FID=139]{text-size:15;text-dx:1;} 
           [OGC_FID=130]{text-size:10;text-dx:1;} 
           [OGC_FID=141]{text-size:16;text-dx:1;} //Pq Nacional Serrania La Neblina
           [OGC_FID=118]{text-size:16;text-dx:1;}//Sierra Untur√°n
           [OGC_FID=3]{text-size:16;text-dx:1;} //Cerro Vinilla y Cerro Aratitiyope
        [OGC_FID=140]{text-size:16;text-dx:1;} //Parque Nacional Parima-Tapirapec√≥
       // [OGC_FID=82]{text-size:10;text-placement:point;}//Monumento Natural Serran√≠a Tapirapec√≥ y Cerro Tamacuari
        [OGC_FID=76]{text-size:14;text-dx:1;}//Monumento Natural Serran√≠a Tapirapec√≥ y Cerro Tamacuari     
      }     
    }
    }
    
    [zoom>=11]{
     point-file:url(img/park2-30greenStroke.png);
     point-placement: interior;
     point-allow-overlap: true;
     point-comp-op:color-dodge;
     //composite-operation:color-dodge;
      ::labels{ 
       [OGC_FID!=87][OGC_FID!=88][OGC_FID!=89][OGC_FID!=90][OGC_FID!=91][OGC_FID!=92][OGC_FID!=93][OGC_FID!=94]
          [OGC_FID!=95][OGC_FID!=96][OGC_FID!=97][OGC_FID!=98][OGC_FID!=99][OGC_FID!=103][OGC_FID!=138][OGC_FID!=19]
          [OGC_FID!=48][OGC_FID!=49][OGC_FID!=50][OGC_FID!=51][OGC_FID!=52][OGC_FID!=53][OGC_FID!=54][OGC_FID!=137][OGC_FID!=413]
          [OGC_FID!=105][OGC_FID!=106][OGC_FID!=107][OGC_FID!=108][OGC_FID!=109][OGC_FID!=110][OGC_FID!=111][OGC_FID!=112][OGC_FID!=113][OGC_FID!=114][OGC_FID!=115][OGC_FID!=116][OGC_FID!=117]
          [OGC_FID!=121][OGC_FID!=122][OGC_FID!=123][OGC_FID!=124][OGC_FID!=125][OGC_FID!=126][OGC_FID!=127][OGC_FID!=128]
          [OGC_FID!=129][OGC_FID!=131][OGC_FID!=132][OGC_FID!=133][OGC_FID!=134][OGC_FID!=135][OGC_FID!=136][OGC_FID!=137]  
       [OGC_FID!=64][OGC_FID!=65][OGC_FID!=66][OGC_FID!=67][OGC_FID!=68][OGC_FID!=69][OGC_FID!=70][OGC_FID!=71][OGC_FID!=72][OGC_FID!=73][OGC_FID!=74] 
  
        {  
        text-name:"[nombre]";
          text-face-name:"Helvetica Neue Bold";
          text-size: 17px;
          text-fill: #047d30;
          text-placement: interior;
          text-allow-overlap:false;
          text-line-spacing:46;
          text-min-distance:1;
          text-comp-op:color-dodge;
      
      [OGC_FID=76]{text-size:14;text-dx:1;}//Monumento Natural Serran√≠a Tapirapec√≥ y Cerro Tamacuari
          }  } }     
    }
 }

//PostGis connections - table: isa.deptales & isa.bosques @bd_raisg
#isadeptales,
#isabosques{
 polygon-fill:#42b014;//#000;
 polygon-opacity:.1;
 polygon-comp-op:color-dodge;
 line-color:#047d30;
 line-comp-op:color-dodge;
 //composite-operation:color-dodge;
  
   [zoom>=8]{
     point-file:url(img/park2-12greenStroke.png);
     point-allow-overlap: true;
     point-placement: interior;
     point-comp-op:color-dodge;
         //composite-operation:color-dodge;
      ::labels{
          text-name:"[nombre]";
          text-face-name:"Helvetica Neue Bold";
          text-size: 13px;
          text-fill: #047d30;
          text-placement: interior;
          text-allow-overlap: false;  
          text-line-spacing:30;
          text-min-distance:3;
          text-comp-op:color-dodge;
          //composite-operation:color-dodge;
      
      [zoom=9] {text-size:15px;}
      [zoom=10] {text-size:16px;}
      [zoom>=11] {text-size:17px;}
          }  }
  }
  

  




