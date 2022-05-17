options ls =78 nocenter nodate nonumber ps = 55;

title1  'Project 1'; 
title2  'Spring  2022'; 
title3  'Spencer Scott and Lizeth Anaya'; 
title4  'Citibike Data Analysis';  /* where  YY  =  question  number */

data citibike;
proc import datafile ='C:\Users\scottsp\Documents\Data\citibikedata.csv'
	out = citibike
	dbms=csv
	replace;
	guessingrows =10;
run;
quit;

trip_duration = input(tripduration,5);

proc contents;

proc print data=work.citibike(obs=100);
run;
quit;

proc gchart;
pie3d usertype;

proc freq data = citibike order=FREQ;
	Table start_station_name*end_station_name/list;
	Table start_station_name/list;
	Table end_station_name/list;
run;
quit;

proc univariate; 
var  tripduration; 
run;
quit;
