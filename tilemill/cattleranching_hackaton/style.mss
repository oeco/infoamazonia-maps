#cattle {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}

#cattle[a2011 =NULL] {
   polygon-fill: #FFFFFF;
}
#cattle[a2011 =0] {
   polygon-fill: #FFFFFF;
}
#cattle[a2011 >0] {
   polygon-fill: #FED98E;
}
#cattle[a2011 >=50000] {
   polygon-fill: #FE9929;
}
#cattle[a2011 >=200000] {
   polygon-fill: #D95F0E;
}
#cattle[a2011 >=1000000] {
   polygon-fill: #993404;
}
