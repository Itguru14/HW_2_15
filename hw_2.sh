#! /bin/sh


hdfs dfs -rm -r /user/hadoop/input/*



ORACLE_TABLES="
GEO_LOCATION
CC_TRANS
NEWS_MEDIA
SOCIAL_MEDIA
WEBSITE_TRAFFIC
"

echo -n "oracle" > sqoop.password 
hadoop fs -put sqoop.password /user/hadoop/pwd/oracle/



for m in $ORACLE_TABLES
do



	sqoop job --create oracle-import-$m \
        -- import \
        --connect jdbc:oracle:thin:@localhost:1521/xe \
        --username system \
        --password-file /user/hadoop/pwd/oracle/sqoop.password   \
        --table STOCK_TRADE.$m -m 1  \
        --target-dir /user/hadoop/input/oracle/$m

	
	echo "Starting SQOOP JOB: oracle-import-$m"
	
	sqoop job --exec oracle-import-$m
done

echo "Bye"




# hdfs dfs -rm -r /user/hadoop/input/*

MYSQL_TABLES="
global_oil
OHLC_prices
email_receipts
financial_statements
human_capital
"



echo -n "root" > sqoop.password 
hadoop fs -put sqoop.password /user/hadoop/pwd/mysql/


for m in $MYSQL_TABLES
do
	sqoop job --create mysql-import-$m \
	-- import \
	--connect jdbc:mysql://localhost/STOCK_TRADE \
	--username root \
	--password-file /user/hadoop/pwd/mysql/sqoop.password \
	--table $m -m 1 \
	--target-dir /user/hadoop/input/mysql/$m
	
	echo "Starting SQOOP JOB: mysql-import-$m"
	
	sqoop job --exec mysql-import-$m
done

echo "Bye"





# hdfs dfs -rm -r /user/hadoop/input/*

POSTGRES_TABLES="
postgrestable
"


echo -n "password" > sqoop.password 
hadoop fs -put sqoop.password /user/hadoop/pwd/postgres/


for m in $POSTGRES_TABLES
do
	sqoop job --create postgre-import-$m \
        -- import \
        --connect jdbc:postgresql://localhost:5432/postgres \
        --username postgres \
        --password-file /user/hadoop/pwd/postgres/sqoop.password  \
        --table postgrestable  -m 1 \
        --target-dir /user/hadoop/input/postgre/$m

	
	echo "Starting SQOOP JOB: postgre-import-$m"
	
	sqoop job --exec postgre-import-$m
done

echo "Bye"





hive;




#hive -f oracle_ext.hql;
#hive -f mysql_ext.hql;


#hive -f oracle_int.hql;
#hive -f mysql_int.hql;



exit;










