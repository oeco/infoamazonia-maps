/*Map {background-color: #b8dee6;}*/


//PostGis connection - table: isa.vias @bd_raisg
#vias {
  	[zoom=4]{line-color: #df051b;
	line-width:0.25;}

	[zoom>=5] {
	line-color: #df051b;
	line-width:0.5;//line-opacity:.5;
  
    //road labels visible from zoom>=7
	[zoom>=7]{
	line-width: 1.5;
    ::labels{ [nm_sigla!='Sem Toponímia na Carta Impressa']{
      text-name:"[nm_sigla]";
      text-face-name:"Helvetica Neue Regular";
      text-size: 11px;
      text-halo-fill:#fff;
      text-fill:#df051b;//#df051b;//rgb(140,65,72);
      text-halo-radius:1;
      text-placement: line; 
      text-min-distance: 100;
      } }
    }
 
  [zoom>=9]{
  line-width: 10;      
    ::labels{ [nm_sigla!='Sem Toponímia na Carta Impressa'] {
      text-name:"[nm_sigla]";
      text-face-name:"Helvetica Neue Regular";
      text-size: 10px;
      text-halo-fill:#fff;
      text-fill:#df051b;//df051b; //rgb(140,65,72);
      text-halo-radius:1.3;
      text-placement: line; 
           text-min-distance: 100;
      }}
   }
      
}}

