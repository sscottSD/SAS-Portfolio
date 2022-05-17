options ls =78 nocenter nodate nonumber ps = 55;

title1  'Project 2'; 
title2  'Spring  2022'; 
title3  'Spencer Scott and Nathan Hedges'; 
title4  'Preliminary Imports';  /* where  YY  =  question  number */

data sales ;
proc import datafile ='C:\Users\scottsp\Documents\Data\BusinessSalesTransaction.csv'
	out = sales
	dbms=csv
	replace;
	guessingrows =10;
run;
quit;


data nba ;
proc import datafile ='C:\Users\scottsp\Documents\Data\2021-2022NBAPlayerStats.csv'
	out = nba
	dbms=csv
	replace;
	guessingrows =10;
run;
quit;

proc contents;
run;

proc print data=work.sales(obs=100);
run;
quit;

proc print data=nba.sales(obs=100);
run;
quit;
