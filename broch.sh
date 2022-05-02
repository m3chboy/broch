#!/bin/bash

for url in $(cat $1);do

        echo $url
        blc -rof --filter-level 3 $url -ro   >> $2;

done