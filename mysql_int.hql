/*
use STOCK_TRADE2;
*/

CREATE  TABLE global_oil1(USERS_CNT INT)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';


insert overwrite table global_oil1
select count(*)
from global_oil;




/*
select * from global_oil1

*/


/*
drop table global_oil;
*/
