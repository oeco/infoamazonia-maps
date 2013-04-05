//Map { background-color:#111; }

#amazonoilfields [zoom > 4]{
  point-file:url(oil-icon-orig.svg);
  point-allow-overlap:false;
  [zoom = 5] { point-file:url(img/oil-rig-11.png); }
  [zoom = 6] { point-file:url(img/oil-rig-16.png); }
  [zoom >= 7] { point-file:url(img/oil-rig-20.png); }
} 