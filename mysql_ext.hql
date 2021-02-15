/*
use STOCK_TRADE2;
*/

/*EXTERNAL */

CREATE EXTERNAL TABLE OHLC_prices (
    times     CHAR(30),
    openprice     FLOAT,
	highprice     FLOAT,
    lowprice      FLOAT,
    closeprice    FLOAT,
    volume        FLOAT
    
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/hadoop/input/mysql/OHLC_prices';



CREATE EXTERNAL TABLE email_receipts (
    time     CHAR(30),
    number_sold     INT,
	value_sold      FLOAT,
    closeprice    FLOAT
    
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/hadoop/input/mysql/email_receipts';






CREATE EXTERNAL TABLE financial_statements (
    time     CHAR(30),
    SEC_fillings          INT,
	type_of_fillings      INT,
    closeprice            FLOAT
    
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/hadoop/input/mysql/financial_statements';


CREATE EXTERNAL TABLE human_capital (
    time     CHAR(30),
    attrition          INT,
	hiring      INT,
    closeprice            FLOAT
    
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/hadoop/input/mysql/human_capital';




CREATE EXTERNAL TABLE global_oil(times CHAR(30),
    oil_price      FLOAT,
    stockprice     FLOAT)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/hadoop/input/mysql/global_oil';





