#!/bin/sh

> summary.csv
for i in results/* ; do 
  cat $i >> summary.csv
  echo ,,, >> summary.csv
  echo ,,, >> summary.csv
done
python csv2excel.py
cp summary.csv  /var/lib/awx/results/`date "+%Y_%m_%d_%H_%M_%S"`summary.csv
cp summary.xlsx  /var/lib/awx/results/`date "+%Y_%m_%d_%H_%M_%S"`summary.xlsx
