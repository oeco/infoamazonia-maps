//territorio indigena >> PostGist connection, table: isa.tis
//Note: if you want interactivity to be displayed, export separately zooms 1-6(disable teaser) and 7-12(teaser enabled).
//Otherwise, just disable interactivity on the "teaser" panel and export all the project from zoom1-12
#tis{
 polygon-fill:#fd8d19;
 polygon-opacity:.1;
 line-color:#d45005;
 line-comp-op:color-dodge;
  
  [zoom>=7]{line-width:2;line-opacity:.51;  
  
    [zoom>=8]{
      ::labels{
        [cod_tis!=11398][cod_tis!=11375][cod_tis!=11367][cod_tis!=11364]{
        text-name:"[nombre]";
        text-face-name:"Helvetica Neue Regular";
        text-size: 13px;
        text-fill: #d45005;
        text-placement: interior;
    	text-allow-overlap: false;  
        text-min-distance:40;
        comp-op:color-dodge;
       // text-transform: capitalize;
          
          //conditional for do not show repeated territories names
          [nombre="TCO ISOSO"]{text-min-distance:100;}
          [nombre="TCO AVATIRI HUACARETA"]{text-min-distance:100;}
          [nombre="TCO CAVINEÑO"]{text-min-distance:100;}
          [nombre="TCO CAYUBABA"]{text-min-distance:100;}
          [nombre="TCO GUARAYOS"]{text-min-distance:100;}
          [nombre="TCO CAYUBABA"]{text-min-distance:100;}
          [nombre="TCO KAAMI"]{text-min-distance:100;}
          [nombre="TCO LECOS APOLO"]{text-min-distance:100;}
          [nombre="TCO MOVIMA II"]{text-min-distance:100;}
          [nombre="TCO PILON LAJAS"]{text-min-distance:100;}
          [nombre="TCO CAVINEÑO"]{text-min-distance:100;}
          [nombre="TCO KAAGUAZU"]{text-min-distance:70;}
          [nombre="TCO ITIKARAPARIRENDA"]{text-min-distance:100;}
          [nombre="TCO ITONAMA"]{text-min-distance:100;}
          [nombre="TCO LECOS LA RECAJA"]{text-min-distance:100;}
          //[nombre="TCO TAKOVO MORA"]{text-min-distance:100;}
          [nombre="TCO TACANA III"]{text-min-distance:100;}
          [nombre="TCO TACANA II"]{text-min-distance:100;}
          [nombre="TCO TACANA"]{text-min-distance:100;}
          //[nombre="TCO TIPNIS (Isiboro Sécure)"]{text-min-distance:100;}
          [nombre="TCO YAMINAHUA MACHINERI"]{text-min-distance:100;}
          [nombre="TCO CANICHANA"]{text-min-distance:100;}
          [nombre="TCO JOAQUINIANO"]{text-min-distance:100;}
          [nombre="TCO ALTO PARAPETI"]{text-min-distance:100;}
         // [nombre="TCO AVATIRI INGRE (COMPENSACION)"]{text-min-distance:100;}
          [nombre="TCO BAURES"]{text-min-distance:100;}
          [nombre="TCO MONTE VERDE"]{text-min-distance:100;}
          [nombre="TCO MULTIETNICO II"]{text-min-distance:100;}
          
          [zoom=9]{text-size: 15px;}  
          [zoom>=10]{text-size: 17px; text-min-distance:100;}
        }}  
    }
    }



}



