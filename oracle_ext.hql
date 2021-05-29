/*  CHAR(30test)*/

CREATE EXTERNAL TABLE GEO_LOCATION(times CHAR(30),foot_traffic INT, temperature INT, parking_space_util INT, stock_price INT)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/hadoop/input/oracle/GEO_LOCATION';



/*LOAD DATA INPATH ‘hdfs:/data/2012.txt’ INTO TABLE GEO_LOCATION;*/

CREATE EXTERNAL TABLE CC_TRANS (
    times                   CHAR(30),
    trans_vol               NUMBER,
    stock_price             NUMBER

    );

ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION LOCATION '/user/hadoop/input/oracle/CC_TRANS';

/*LOAD DATA INPATH ‘hdfs:/data/2012.txt’ INTO TABLE CC_TRANS;*/


CREATE EXTERNAL TABLE SOCIAL_MEDIA (
    times               CHAR(30),
    TWTR_vol            INT,
    reddit_vol          INT,
    FB_vol              INT,
    stock_price         INT
   
    )
    
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION LOCATION '/user/hadoop/input/oracle/SOCIAL_MEDIA';



CREATE EXTERNAL TABLE NEWS_MEDIA (
    times               CHAR(30),
    NYT_vol             INT,
    BLOOMBERG_vol       INT,
    FT_vol              INT,
    stock_price         INT
   
    );
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION LOCATION '/user/hadoop/input/oracle/NEWS_MEDIA';



CREATE EXTERNAL TABLE WEBSITE_TRAFFIC(
    times               CHAR(30),
    visitor_vol            INT,
    unique_vistor_vol          INT,
    stock_price         INT
   
    )

ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION LOCATION '/user/hadoop/input/oracle/WEBSITE_TRAFFIC';




