#cattle {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  //polygon-comp-op: value;
  //polygon-fill:#ae8;
}


#cattle[ANHO2011b =NULL] {
   polygon-fill: #FFFFFF;
}
#cattle[ANHO2011b =0] {
   polygon-fill: #FFFFFF;
}
#cattle[ANHO2011b >0] {
   polygon-fill: #FED98E;
}

#cattle[ANHO2011b >=50000] {
   polygon-fill: #FE9929;
}
#cattle[ANHO2011b >=200000] {
   polygon-fill: #D95F0E;
}
#cattle[ANHO2011b >=1000000] {
   polygon-fill: #993404;
}