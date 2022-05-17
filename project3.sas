 proc import datafile = "C:\Users\scottsp\Documents\Data\Retail\features.csv"
 	out=features
	dbms =csv
	replace;
proc print data=features (obs=10);
run;
quit;

 proc import datafile = "C:\Users\scottsp\Documents\Data\Retail\stores.csv"
 	out=stores
	dbms =csv
	replace;

proc print data=stores (obs=10);
run;
quit;


 proc import datafile = "C:\Users\scottsp\Documents\Data\Retail\sales.csv"
 	out=sales
	dbms =csv
	replace;

proc print data=sales (obs=10);
run;
quit;


data combined;
	set sales  stores features;
	by Store;
run;
quit;

proc print data=combined (obs=10);
run;
quit;


proc import datafile = "C:\Users\scottsp\Documents\Data\Superstore.csv"
 	out=superstore
	dbms =csv
	replace;


proc print data=superstore(obs=10);
run;
quit;


