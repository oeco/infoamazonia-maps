#states [zoom <= 12] {
  marker-width:6;
  marker-fill:#969696;
  marker-opacity:0.9;
  marker-line-color:#813;
  marker-line-opacity:0;
  marker-allow-overlap:true;
  [zoom < 5]{
    [Embargos < 400]{marker-width:10;}
    [Embargos >= 400][Embargos < 700]{marker-width:14;}
    [Embargos >= 700][Embargos < 1400]{marker-width:18;}
    [Embargos >= 1400][Embargos < 3000]{marker-width:22;}
    [Embargos >= 3000]{marker-width:26;}
    
  }
  [zoom >= 5][zoom < 7]{
    marker-opacity:0.7;
    [Embargos < 400]{marker-width:20;}
    [Embargos >= 400][Embargos < 700]{marker-width:24;}
    [Embargos >= 700][Embargos < 1400]{marker-width:28;}
    [Embargos >= 1400][Embargos < 3000]{marker-width:32;}
    [Embargos >= 3000]{marker-width:36;}
  }
  [zoom >= 7][zoom <= 12]{
    marker-opacity:0.5;
    [Embargos < 400]{marker-width:32;}
    [Embargos >= 400][Embargos < 700]{marker-width:36;}
    [Embargos >= 700][Embargos < 1400]{marker-width:40;}
    [Embargos >= 1400][Embargos < 3000]{marker-width:44;}
    [Embargos >= 3000]{marker-width:48;}
  }
  
  ::labels {
    text-name:"[Embargos]";
    text-face-name:"Arial Bold";
    text-allow-overlap:true;
    [zoom < 5]{
      text-opacity:0;
    }
    [zoom >= 5][zoom < 7]{
      [Embargos < 400]{text-size:6;}
      [Embargos >= 400][Embargos < 700]{text-size:8;}
      [Embargos >= 700][Embargos < 1400]{text-size:10;}
      [Embargos >= 1400][Embargos < 3000]{text-size:11.5;}
      [Embargos >= 3000]{text-size:13;}
    }
    [zoom >= 7][zoom <= 12]{
      [Embargos < 400]{text-size:8;}
      [Embargos >= 400][Embargos < 700]{text-size:10;}
      [Embargos >= 700][Embargos < 1400]{text-size:11.5;}
      [Embargos >= 1400][Embargos < 3000]{text-size:13;}
      [Embargos >= 3000]{text-size:16;}
    }
  }
}

