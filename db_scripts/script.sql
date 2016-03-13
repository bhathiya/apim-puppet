drop database AM_DB;
drop database GOV_REG_DB;
drop database CONFIG_REG_DB;
drop database UM_DB;
create database UM_DB;
create database AM_DB;
create database GOV_REG_DB;
create database CONFIG_REG_DB;
use UM_DB;
source /opt/dbscripts/mysql.sql;
use GOV_REG_DB;
source /opt/dbscripts/mysql.sql;
use CONFIG_REG_DB;
source /opt/dbscripts/mysql.sql;
use AM_DB;
source /opt/dbscripts/apimgt/mysql.sql;

