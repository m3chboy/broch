#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo '_____________________________________________'
echo  "${red} Linkedin ${reset}"
echo '---------------------------------------------'
cat $1 | grep 'linkedin' | cut -f 2- -d ' ' | sed 's/(HTTP_999)$//' | sort -u

echo '_____________________________________________'
echo  "${red} Youtube ${reset}"
echo '---------------------------------------------'
cat $1 | grep 'youtube' | cut -f 2- -d ' ' | sed 's/(HTTP_404)$//' | sort -u

echo '_____________________________________________'
echo  "${red} Facebook ${reset}"
echo '---------------------------------------------'
cat $1 | grep 'facebook' | cut -f 2- -d ' ' | sed 's/(HTTP_404)$//' | sort -u

echo '_____________________________________________'
echo  "${red} Instagram ${reset}"
echo '---------------------------------------------'
cat $1 | grep 'instagram' | cut -f 2- -d ' ' | sed 's/(HTTP_404)$//' | sort -u


echo '_____________________________________________'
echo  "${red} ERRNO_ECONNRESET ${reset}"
echo '---------------------------------------------'
cat $1 | grep 'ERRNO_ECONNRESET' | cut -f 2- -d ' ' | sed 's/(ERRNO_ECONNRESET)$//' | sort -u

echo '_____________________________________________'
echo  "${red} ERRNO_ENOTFOUND ${reset}"
echo '---------------------------------------------'
cat $1 | grep 'ERRNO_ENOTFOUND' | cut -f 2- -d ' ' | sed 's/(ERRNO_ENOTFOUND)$//' | sort -u

echo '_____________________________________________'
echo  "${red} ERRNO_EPROTO ${reset}"
echo '---------------------------------------------'
cat $1 | grep 'ERRNO_EPROTO' | cut -f 2- -d ' ' | sed 's/(ERRNO_EPROTO)$//' | sort -u

echo '_____________________________________________'
echo  "${red} ERRNO_ECONNREFUSED : ${green} ${url} ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(ERRNO_ECONNREFUSED)' | cut -f 2- -d ' ' | sed 's/(ERRNO_ECONNREFUSED)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_undefined ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_undefined)' | cut -f 2- -d ' ' | sed 's/(HTTP_undefined)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_204 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_204)' | cut -f 2- -d ' ' | sed 's/(HTTP_204)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_308 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_308)' | cut -f 2- -d ' ' | sed 's/(HTTP_308)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_404 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_404)' | cut -f 2- -d ' ' | sed 's/(HTTP_404)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_400 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_400)' | cut -f 2- -d ' ' | sed 's/(HTTP_400)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_403 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_403)' | cut -f 2- -d ' ' | sed 's/(HTTP_403)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_401 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_401)' | cut -f 2- -d ' ' | sed 's/(HTTP_401)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_405 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_405)' | cut -f 2- -d ' ' | sed 's/(HTTP_405)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_429 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_429)' | cut -f 2- -d ' ' | sed 's/(HTTP_429)$//' | sort -u

echo '_____________________________________________'
echo  "${red} Testing : ${green} ${url} ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_504)' | cut -f 2- -d ' ' | sed 's/(HTTP_504)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_505 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_505)' | cut -f 2- -d ' ' | sed 's/(HTTP_505)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_999 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_999)' | cut -f 2- -d ' ' | sed 's/(HTTP_999)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_503 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_503)' | cut -f 2- -d ' ' | sed 's/(HTTP_503)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_500 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_500)' | cut -f 2- -d ' ' | sed 's/(HTTP_500)$//' | sort -u

echo '_____________________________________________'
echo  "${red} HTTP_502 ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(HTTP_502)' | cut -f 2- -d ' ' | sed 's/(HTTP_502)$//' | sort -u

echo '_____________________________________________'
echo  "${red} BLC_INVALID ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(BLC_INVALID)' | cut -f 2- -d ' ' | sed 's/(BLC_INVALID)$//' | sort -u

echo '_____________________________________________'
echo  "${red} BLC_UNKNOWN ${reset}"
echo '---------------------------------------------'
cat $1 | grep '(BLC_UNKNOWN)' | cut -f 2- -d ' ' | sed 's/(BLC_UNKNOWN)$//' | sort -u

echo '_____________________________________________'
echo  "${red} Unknown ${reset}"
echo '---------------------------------------------'
cat $1 | grep BROKEN | grep -v 'BLC_INVALID\|BLC_UNKNOWN\|HTTP_204\|HTTP_405\|HTTP_401\|HTTP_429\|HTTP_308\|HTTP_502\|HTTP_500\|HTTP_503\|HTTP_999\|HTTP_505\|HTTP_504\|HTTP_400\|HTTP_403\|HTTP_404\|HTTP_undefined\|ERRNO_ECONNREFUSED\|ERRNO_EPROTO\|ERRNO_ENOTFOUND\|ERRNO_ECONNRESET' | sort -u