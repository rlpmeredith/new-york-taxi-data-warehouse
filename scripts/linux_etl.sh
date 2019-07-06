#!/bin/bash

mkdir data
mkdir data_no_headers
mkdir yellow_tripdata_2018

cat ./taxi_data_urls | xargs -n 1 -P 6 wget -c -P data/

cd ./data
for filename in yellow_tripdata*.csv; do
echo $filename
tail -n +3 $filename > ../data_no_headers/$filename
done

cd ../data_no_headers
cat yellow_tripdata*.csv > ../yellow_tripdata_2018

cp ../yellow_tripdata_2018 ../yellow_tripdata_2018.copy
remove='1,6,7,10,12,13,14,15,16,17'
cut -d, -f$remove --complement ../yellow_tripdata_2018 > ../yellow_trip2018_prep
remove2='1,3,4,5,6,8,9'
cut -d, -f$remove2 --complement ./taxidatapost.csv > ./taxidatanosqlprep
