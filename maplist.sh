#!/bin/bash

echo "mapcycle =" > ../leosight.cfg
for FILE in *.png; do
  LINE=$'Maps/LeoSight/'
  LINE+=$(echo $FILE | sed -E -e "s/(\.\.\/missions\/|\.json)//g")
  LINE+=';'
  echo $LINE >> ../leosight.cfg
done