PROC IMPORT DATAFILE="/home/u64476764/drug_response_dataset.csv"
OUT=drugdata
DBMS=CSV
REPLACE;
GETNAMES=YES;
RUN;
PROC PRINT DATA=drugdata;
RUN;
PROC MEANS DATA=drugdata;
VAR Age Na_to_K;
RUN;
PROC FREQ DATA=drugdata;
TABLES Drug;
RUN;
PROC FREQ DATA=drugdata;
TABLES BP*Drug / CHISQ;
RUN;
PROC MEANS DATA=drugdata;
CLASS Drug;
VAR Age;
RUN;
PROC SGPLOT DATA=drugdata;
VBOX Age / CATEGORY=Drug;
RUN;
PROC FREQ DATA=drugdata;
TABLES Sex*Drug / CHISQ;
RUN;
PROC MEANS DATA=drugdata;
CLASS Drug;
VAR Na_to_K;
RUN;
PROC SGPLOT DATA=drugdata;
VBOX Na_to_K / CATEGORY=Drug;
RUN;
PROC FREQ DATA=drugdata;
TABLES Cholesterol*Drug / CHISQ;
RUN;