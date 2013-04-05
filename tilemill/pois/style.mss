//Map { background-color:#303030; }

/***** NOTE ****

Although project generates all three poi layers 
- timber clusters, 
- slaughterhouses
- dams

Each Map needs to be exported separately, so that each layer
is interactive. To do this, simply uncomment the carto, and 
change the active layer in the interactivity (teaser field)

open `tooptip-src.html` (in /maps-src) with a text editor, and 
find the "pois" section. copy and paste the interactivity for 
the apporpriate layer. 
*/

#polosmadeireiros [zoom>6] {
  [zoom=7] {point-file:url(img/lumber-18.png);}
  [zoom>=8]{point-file:url(img/lumber-24.png);} 
  point-allow-overlap:true;
} 
/* 
#usina [zoom>6]{
  [zoom=7] {point-file:url(img/dam-18.png);}
  [zoom>=8]{point-file:url(img/dam-24.png);}
  point-allow-overlap:false;
}

#imazonslaughterhouse [zoom>6]{
  [zoom=7] {point-file:url(img/cow-18.png);}
  [zoom>=8]{point-file:url(img/cow-24.png);}
  point-allow-overlap:true;
} 
 */