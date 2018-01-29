#!/bin/bash
sleep 60
source /reddconomy_updater.sh

echo "Starting...."
cd /opt/reddconomy

downloadReddconomy Reddconomy.jar

if [ ! -f /data/reddconomy.json ];
then
    echo "{\"welcome_tip\":100.0,\"bind_ip\":\"0.0.0.0\", \"sqlite-path\": \"/data/db2.sqlite\", \"coin\":\"$COIN\", \"coin_short\":\"$COIN_SHORT\"}" > /data/reddconomy.json
fi

/opt/java/bin/java -jar Reddconomy.jar /data/reddconomy.json
