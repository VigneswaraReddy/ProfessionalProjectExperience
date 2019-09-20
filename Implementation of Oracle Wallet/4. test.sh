#! /usr/bin/ksh
# above line ensures that the script runs using the Korn Shell. 
#   ------  -------------  ------------------------  -------------
#SET ENVIRONMENT VARIABLE
. $HOME/env.sh
#echo $userpass;
#echo $username;
#echo $password;
sqlplus  $userpass <<!
select user,sys_context('userenv','service_name') from dual;
exit 0
!
