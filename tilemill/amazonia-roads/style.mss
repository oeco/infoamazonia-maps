/*
Map { background-color: #000; }

#countries {
    line-color: #fff;
    line-width: 1;[zoom>5]
  }
*/

//[TipoPNV != ""][KMF != 0][KMI != 0] {

#rodoviasclip[zoom>5][TipoPNV != "Planejada"][TipoPNV != ""][KMF != 0][KMI != 0] {
  line-color:#88ffff;
  //line-color:#000;
  line-opacity:.6; 
  [zoom=6] { line-width: 0.1; }
  [zoom=7] { line-width: 0.25; }
  [zoom=8] { line-width: 0.5; }
  [zoom=9] { line-width: .75; }
  [zoom>=10] { line-width: 1; }
}