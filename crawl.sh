#!/bin/bash
cd /root/taifex-crawler/data
a=$(date +"%Y_%m_%d")
wget https://www.taifex.com.tw/DailyDownload/Daily_$a.zip
wget https://www.taifex.com.tw/OptionsDailyDownload/OptionsDaily_$a.zip
cd ..
git add .
git commit -m "daily update"
git push
git gc
