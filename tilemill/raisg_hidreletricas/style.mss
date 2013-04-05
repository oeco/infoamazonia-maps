/*Map {background-color: #b8dee6;} */


//PostGis connection: table isa.hidreletricas on bd_raisg
//export separately zooms 1-6(disable teaser) and 7-12(teaser enabled)
#isahidreletricas {
    point-file:url(img/dam-original-6.png);
    point-opacity: 1;
    point-allow-overlap: true;
    
   [zoom=5]{ point-file:url(img/dam-original-8.png)}// other icons: img/dam-grey-8.png (nps grey icon) & img/nps-dam-pink8.png (nps pink)
   [zoom=6]{ point-file:url(img/dam-original-12.png);}
   [zoom=7]{ point-file:url(img/dam-original-20.png);}
   [zoom=8]{ point-file:url(img/dam-original-24.png);}
   [zoom>=9]{ point-file:url(img/dam-original-32.png);}
 }
