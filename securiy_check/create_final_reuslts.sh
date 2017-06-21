#!/bin/sh

> summary.csv
for i in results/* ; do 
  cat $i >> summary.csv
  echo ,,, >> summary.csv
  echo ,,, >> summary.csv
done
python csv2excel.py
