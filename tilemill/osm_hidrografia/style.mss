Map {
  background-color: #fff;
}

//file: osm_waterareas.shp -->>backup @ Dropbox/InfoAmazonia_data/1_environmentalLayers/osm_water_sa.zip
#osmwaterareas {
  line-color:#168;
  polygon-fill:#a7e9f7;
  line-width:0.5; 
  polygon-opacity:1;
}

//file: osm_waterways.shp  -->>backup @ Dropbox/InfoAmazonia_data/1_environmentalLayers/osm_waterways.zip
#osmwaterways { 
   [zoom>=7]{ 
                //expedição 01
                [NAME_LOC='Río Papallacta'],
                [NAME_LOC='Río Quijos'],
                [NAME_LOC='Río Antisana'],
                [NAME_LOC='Río Salado'] ,
                [NAME_LOC='Salado'] ,
                [NAME_LOC='Río Coca'], 
              //expedição 02
                [NAME_LOC='Río Pastaza'],
                [NAME_LOC='Pastaza'],
                [NAME_LOC='Río Patate'],
                [NAME_LOC='Rio Cutuchi'],
                [NAME_LOC='Río Ambato'] ,
                [NAME_LOC='Río Chambo'] ,
      			[NAME_LOC='Rio Verde'],
    		    [NAME_LOC='Río Toro'],
     			[NAME_LOC='Río Negro'],
                [NAME_LOC='Río Palora'] ,
                [NAME_LOC='Río Ulba'] ,
                [NAME_LOC='Río Nayanmak'] ,
                [NAME_LOC='Río Numbayme'] ,
                [NAME_LOC='Río Nayanapamba'] ,
                [NAME_LOC='Río Chinchín'] ,
                [NAME_LOC='Río Arapicos'] ,
                [NAME_LOC='Río Napo'],
                [NAME_LOC='Napo'], 
                //expedição 03
                [NAME_LOC='Río Upano'],
               // [NAME_LOC='Río Palora'],
                [NAME_LOC='Rio Tutanangoza'],
   			   [NAME_LOC='Río Tutanangoza'],
                  //expedição 04
                [NAME_LOC='Río Paute'],
                [NAME_LOC='Río Cajas'],
                [NAME_LOC='Río Tomebamba'],
                [NAME_LOC='Río Yanuncay'],
                [NAME_LOC='Río Tarqui'],
                [NAME_LOC='Río Machángara'],
                [NAME_LOC='Río Cuenca'],
                [NAME_LOC='Río Namangoza'],
                [NAME_LOC='Río Zamora'],
                [NAME_LOC='Rio Zamora'],
   					{   
                         ::glow {
                           line-color: #b5e1f7;//#fff;#b5e1f7
                           line-opacity: 0.39;
                           line-width: 9; 
      						}
                 line-color: #168; line-width:1.5;
       			 comp-op: multiply;
                }
        }   

         [zoom=8]{
         ::labels{
       			[NAME_LOC!='Río Culebrillas?'][NAME_LOC!='Río Mazán'][NAME_LOC!='Río Cañar'][NAME_LOC!='Río Miguir']
                      [NAME_LOC!='Río Collay'][NAME_LOC!='Río Kutucus'][NAME_LOC!='Río Quimi'][NAME_LOC!='Río Chicaña'][NAME_LOC!='Río Tuna']    
        			  [NAME_LOC!='Río Alao'] [NAME_LOC!='Río Shayhua'] [NAME_LOC!='Río Ishpi'][NAME_LOC!='Rio Pita'][NAME_LOC!='Toachi'][NAME_LOC!='Río Toachi']
        			  [NAME_LOC!='Rio Valle'][NAME_LOC!='Río Cinto'][NAME_LOC!='Oyacachi'][NAME_LOC!='Río Jeringa'][NAME_LOC!='Cosanga']
        			  [NAME_LOC!='Mulatos'][NAME_LOC!='Río Chalpi'][NAME_LOC!='Río Hualaringo'][NAME_LOC!='Río Aguarico'][NAME_LOC!='Río Due']
    				  [NAME_LOC!='Pano'][NAME_LOC!='Tena'][NAME_LOC!='Río Hollín'][NAME_LOC!='Río Vigay'][NAME_LOC!='Puyo'][NAME_LOC!='Alpayacu'][NAME_LOC!='Río Eno']
        			  [NAME_LOC!='Río Sótano'][NAME_LOC!='Pun'][NAME_LOC!='Carchi'][NAME_LOC!='San Juan'][NAME_LOC!='Río Jivino'][NAME_LOC!='Río Jivino Verde']
        			  [NAME_LOC!='Río Mangosiza'][NAME_LOC!='Río Tulipe'][NAME_LOC!='Río Anzu'][NAME_LOC!='Río Mira'][NAME_LOC!='Río Cosanga'][NAME_LOC!='Río San Pablo']
        			{
        		text-name: "[NAME_LOC]";
                text-face-name:"Arial Bold";
                text-size:06;
                text-fill: #ffffff;
                text-halo-fill:rgba(0,0,0,0.5);
                text-halo-radius:0.5;
                text-placement: line;
        
   			   //exp01
                    [NAME_LOC='Río Papallacta']{text-size:11;text-placement: point;text-min-distance:10;}
                    [NAME_LOC='Río Quijos']{text-size:11;text-placement:point;text-min-distance:30;}
         			[NAME_LOC='Río Coca']{text-size:11;text-placement:interior;text-min-distance:50;}                  
                    //exp2
                      [NAME_LOC='Río Palora']{text-size:11;text-placement:interior;text-min-distance:50;}   
          			  [NAME_LOC='Río Napo']{text-size:10;text-placement:line;text-min-distance:50;}               
        			//exp3
    				  [NAME_LOC='Río Upano']{text-size:11; text-placement:interior;text-min-distance:70;}
                   //exp4
                      [NAME_LOC='Río Paute']{text-size:11; text-placement:interior;text-min-distance:100} 
                      [NAME_LOC='Río Cuenca']{text-size:09; text-placement:interior;text-min-distance:30} 
        			  [NAME_LOC='Río Pastaza'] {text-size:11;text-placement:interior;text-min-distance:100;} 
      				}
}
}

    
          [zoom=9]{ 
             ::labels{ [NAME_LOC!='Río Culebrillas?'][NAME_LOC!='Río Mazán'][NAME_LOC!='Río Cañar'][NAME_LOC!='Río Miguir']
                      [NAME_LOC!='Río Collay'][NAME_LOC!='Río Kutucus'][NAME_LOC!='Río Quimi'][NAME_LOC!='Río Chicaña'][NAME_LOC!='Río Tuna']    
        			  [NAME_LOC!='Río Alao'] [NAME_LOC!='Río Shayhua'] [NAME_LOC!='Río Ishpi'][NAME_LOC!='Rio Pita'][NAME_LOC!='Toachi'][NAME_LOC!='Río Toachi']
        			  [NAME_LOC!='Rio Valle'][NAME_LOC!='Río Cinto'][NAME_LOC!='Oyacachi'][NAME_LOC!='Río Jeringa'][NAME_LOC!='Cosanga']
        			  [NAME_LOC!='Mulatos'][NAME_LOC!='Río Chalpi'][NAME_LOC!='Río Hualaringo'][NAME_LOC!='Río Aguarico'][NAME_LOC!='Río Due']
    				  [NAME_LOC!='Pano'][NAME_LOC!='Tena'][NAME_LOC!='Río Hollín'][NAME_LOC!='Río Vigay'][NAME_LOC!='Puyo'][NAME_LOC!='Alpayacu'][NAME_LOC!='Río Eno']
        			  [NAME_LOC!='Río Sótano'][NAME_LOC!='Pun'][NAME_LOC!='Carchi'][NAME_LOC!='San Juan'][NAME_LOC!='Río Jivino'][NAME_LOC!='Río Jivino Verde']
        			  [NAME_LOC!='Río Mangosiza'][NAME_LOC!='Río Tulipe'][NAME_LOC!='Río Anzu'][NAME_LOC!='Río Mira']
      				{
                    text-name: "[NAME_LOC]";
                    text-face-name:"Arial Bold";
                    text-size:10;
                    text-fill:#ffffff;
                    text-allow-overlap: false;
                    text-halo-fill:#313030;
                    text-halo-radius:0.5;
                    text-placement: line;
                         //exp01
                         [NAME_LOC='Río Papallacta'] {text-size:12;text-placement: point;text-min-distance:10;}
                         [NAME_LOC='Río Salado'] {text-size:10;text-placement: point;text-min-distance:40;}
                         [NAME_LOC='Río Antisana'] {text-size:11;text-placement: point;text-min-distance:50}//;
                         [NAME_LOC='Río Quijos']{text-size:12;text-placement:point;text-min-distance:100;}
         				 [NAME_LOC='Río Coca']{text-size:12;text-placement:line;text-min-distance:100;}                  
       					 //exp2
     				      [NAME_LOC='Río Pastaza'] {text-size:11;}
                          [NAME_LOC='Río Patate']{text-size:08;text-placement: point;} 
                        //  [NAME_LOC='Río Ambato'] {text-size:09;text-placement: point;text-min-distance:05;} 
                          [NAME_LOC='Río Palora']  {text-size:12;text-placement:point;text-min-distance:100;} 
                          [NAME_LOC='Rio Verde']{text-placement: point;}
                          [NAME_LOC='Napo']{text-placement: point;}  
                          [NAME_LOC='Río Negro'] {text-size:08;text-placement: point;}
                         // [NAME_LOC='Río Chambo'] {text-size:11;text-min-distance:100; text-placement:interior;}
                          [NAME_LOC='Rio Cutuchi']{text-size:11; text-placement:point;text-min-distance: 300;}   
        				  [NAME_LOC='Río Napo']{text-size:12;text-placement:line;text-min-distance:100;}                  
      					  //exp3
                          [NAME_LOC='Río Upano']{text-size:12;}
                          //exp4
                          [NAME_LOC='Río Paute']  {text-size:12; text-placement:interior;text-min-distance:100} 
                          [NAME_LOC='Río Cuenca']{text-size:12; text-placement: point; text-min-distance:10;}    
       					  [NAME_LOC='Río Pastaza'] {text-size:12;text-placement:interior;text-min-distance:200;}                  
       					  [NAME_LOC='Río Zamora']{text-size: 10; text-placement:interior;text-min-distance:150;}
                		  } 
              		   }
					}
        
           [zoom=10]{ 
            ::labels{ [NAME_LOC!='Río Culebrillas?'][NAME_LOC!='Río Mazán'][NAME_LOC!='Río Cañar'][NAME_LOC!='Río Miguir']
                      [NAME_LOC!='Río Collay'][NAME_LOC!='Río Kutucus'][NAME_LOC!='Río Quimi'][NAME_LOC!='Río Chicaña'][NAME_LOC!='Río Tuna']    
        			  [NAME_LOC!='Río Alao'] [NAME_LOC!='Río Shayhua'] [NAME_LOC!='Río Ishpi'][NAME_LOC!='Rio Pita'][NAME_LOC!='Toachi'][NAME_LOC!='Río Toachi']
        			  [NAME_LOC!='Rio Valle'][NAME_LOC!='Río Cinto'][NAME_LOC!='Oyacachi'][NAME_LOC!='Río Jeringa'][NAME_LOC!='Cosanga']
        			  [NAME_LOC!='Mulatos'][NAME_LOC!='Río Chalpi'][NAME_LOC!='Río Hualaringo'][NAME_LOC!='Río Aguarico'][NAME_LOC!='Río Due']
    				  [NAME_LOC!='Pano'][NAME_LOC!='Tena'][NAME_LOC!='Río Hollín'][NAME_LOC!='Río Vigay'][NAME_LOC!='Puyo'][NAME_LOC!='Alpayacu'][NAME_LOC!='Río Eno']
        			  [NAME_LOC!='Río Sótano'][NAME_LOC!='Pun'][NAME_LOC!='Carchi'][NAME_LOC!='San Juan'][NAME_LOC!='Río Jivino'][NAME_LOC!='Río Jivino Verde']
        			  [NAME_LOC!='Río Mangosiza'][NAME_LOC!='Santiago'][NAME_LOC!='Río Tulipe']
      				  {
                text-name: "[NAME_LOC]";
                text-face-name:"Arial Bold";
                text-size:10;
                text-fill:#ffffff;
                text-allow-overlap: false;
                text-halo-fill:rgba(0,0,0,0.5);
                text-halo-radius:0.5;
                text-placement: line;
        //exp1
           	   [NAME_LOC='Río Antisana'] {text-size:13;}
               [NAME_LOC='Río Papallacta'] {text-size:14;text-placement:interior;text-min-distance:50;}
               [NAME_LOC='Río Salado'] {text-size:12;text-placement: interior;text-min-distance:150;}
         	   [NAME_LOC='Río Quijos']{text-size:13;text-placement:line;text-min-distance:100;}
        	   [NAME_LOC='Río Coca']{text-size:14;text-placement:line;text-min-distance:100;}
         
        //exp2
        		[NAME_LOC='Río Pastaza'] {text-size:14;text-min-distance:50;}
                [NAME_LOC='Río Patate'] {text-size:13;text-placement:interior;}
              //  [NAME_LOC='Río Ambato'] {text-size:13;text-placement: interior;text-min-distance:50;}
                [NAME_LOC='Río Palora'] {text-size:14; text-placement:interior;}
                [NAME_LOC='Rio Verde']{text-size:13;text-placement: point;}
                [NAME_LOC='Río Negro'] {text-placement: point;}
                //[NAME_LOC='Río Chambo'] {text-size:12;text-min-distance:150; text-placement: point;}
                [NAME_LOC='Río Chinchín'],
                [NAME_LOC='Río Arapicos'],{text-placement: point;}   
        		[NAME_LOC='Rio Cutuchi']{text-size:09;text-placement: line;}  
                [NAME_LOC='Río Napo']{text-size:12;text-placement:line;text-min-distance:100;}
         //exp3
                [NAME_LOC='Río Upano'],{text-size:12;}
                [NAME_LOC='Río Palora'],{text-size:12;text-min-distance:100;}
              //  [NAME_LOC='Rio Tutanangoza']//não tem
        //exp4
                [NAME_LOC='Río Tomebamba'] {text-placement: interior;text-min-distance:10;}   
                [NAME_LOC='Río Yanuncay'] {text-size:11;text-placement: point;text-min-distance:15;}   
                [NAME_LOC='Río Cuenca']{text-size:13; text-placement:interior; text-min-distance:20; text-dy:-18; text-dx:20;}
                [NAME_LOC='Río Tarqui']{text-size:09; text-placement: point;}
                [NAME_LOC='Río Machángara']{text-size:08; text-placement: interior;}   
        		[NAME_LOC='Río Zamora'] {text-size:12;text-placement: interior;text-min-distance:20;}
            	[NAME_LOC='Río Paute']  {text-size:13; text-placement: line; text-min-distance:15;}  
                }
            }
    }
    
      [zoom>=11]{ 
            ::labels{ [NAME_LOC!='Río Culebrillas?'][NAME_LOC!='Río Mazán'][NAME_LOC!='Río Cañar'][NAME_LOC!='Río Miguir']
                      [NAME_LOC!='Río Collay'][NAME_LOC!='Río Kutucus'][NAME_LOC!='Río Quimi'][NAME_LOC!='Río Chicaña'][NAME_LOC!='Río Tuna']    
        			  [NAME_LOC!='Río Alao'] [NAME_LOC!='Río Shayhua'] [NAME_LOC!='Río Ishpi'][NAME_LOC!='Rio Pita'][NAME_LOC!='Toachi'][NAME_LOC!='Río Toachi']
        			  [NAME_LOC!='Rio Valle'][NAME_LOC!='Río Cinto'][NAME_LOC!='Oyacachi'][NAME_LOC!='Río Jeringa'][NAME_LOC!='Cosanga']
        			  [NAME_LOC!='Mulatos'][NAME_LOC!='Río Chalpi'][NAME_LOC!='Río Hualaringo'][NAME_LOC!='Río Aguarico'][NAME_LOC!='Río Due']
    				  [NAME_LOC!='Pano'][NAME_LOC!='Tena'][NAME_LOC!='Río Hollín'][NAME_LOC!='Río Vigay'][NAME_LOC!='Puyo'][NAME_LOC!='Alpayacu'][NAME_LOC!='Río Eno']
        			  [NAME_LOC!='Río Sótano'][NAME_LOC!='Pun'][NAME_LOC!='Carchi'][NAME_LOC!='San Juan'][NAME_LOC!='Río Jivino'][NAME_LOC!='Río Jivino Verde']
        			  [NAME_LOC!='Río Mangosiza'][NAME_LOC!='Río Tulipe'][NAME_LOC!='Río Anzu'][NAME_LOC!='Río Mira'][NAME_LOC!='Río Cosanga'][NAME_LOC!='Río San Pablo'][NAME_LOC!='Molobog'] 
    				  {
                text-name: "[NAME_LOC]";
                 text-face-name:"Arial Bold";
                text-size:11;
                text-fill:#ffffff;
                text-allow-overlap: false;
                text-halo-fill:rgba(0,0,0,0.5);
                text-halo-radius:0.5;
                text-placement: line;
          
   //exp1
           	   [NAME_LOC='Río Antisana'] {text-size:13;text-placement:interior;text-min-distance:100;}
               [NAME_LOC='Río Papallacta'] {text-size:10;text-placement:line;text-min-distance:200}
               [NAME_LOC='Río Salado'] {text-size:12;text-min-distance:150;}
         	   [NAME_LOC='Río Quijos']{text-size:14;text-placement:line;text-min-distance:200;}
        	   [NAME_LOC='Río Coca']{text-size:14;text-placement:line;text-min-distance:100;}
            
         //exp2
                [NAME_LOC='Río Patate'],
               // [NAME_LOC='Río Ambato'] ,
                [NAME_LOC='Río Palora'] ,
                [NAME_LOC='Río Verde'],
               // [NAME_LOC='Río Chambo'] {text-size:13;text-min-distance:100; text-placement: point;}
                [NAME_LOC='Río Chinchín'],
                [NAME_LOC='Río Arapicos'],{text-placement: point;}   
        		[NAME_LOC='Rio Cutuchi']{text-min-distance: 200;}
        		[NAME_LOC='Río Napo']{text-size:14;text-placement:line;text-min-distance:200;}
         //exp3
                [NAME_LOC='Río Upano'],{text-size:13;text-min-distance:100;}
                [NAME_LOC='Río Palora'],{text-size:13;text-min-distance:100;}
        //exp4
                [NAME_LOC='Río Tomebamba'] {text-size:10; text-placement: point;text-min-distance:30;}  
                [NAME_LOC='Río Yanuncay'], 
              //  [NAME_LOC='Río Cuenca']{text-placement: point; text-min-distance:70;}
   			    [NAME_LOC='Río Tarqui']{text-placement: point;text-min-distance:70;}
                [NAME_LOC='Río Machángara']{text-size:08; text-placement: point;}   
        		[NAME_LOC='Río Zamora'] {text-placement: point;}
       			
        		[NAME_LOC='Río Paute']  {text-size:13; text-min-distance:100;}  
		   		[NAME_LOC='Río Cuenca']{text-size:13; text-placement:interior; text-min-distance:50;text-dy:-18; text-dx:20; }	    
      }
 			 }	
          }
 		
    
        [zoom=12]{ 
            ::labels{ [NAME_LOC!='Río Culebrillas?']
               {
                text-name: "[NAME_LOC]";
                text-face-name:"Arial Bold";
                text-size:14;
                text-fill:#ffffff;
                text-allow-overlap: false;
                text-halo-fill:rgba(0,0,0,0.5);
                text-halo-radius:0.5;
                text-placement: line; 
         		}  
              }
            }

}

