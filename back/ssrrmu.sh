#!/bin/bash
echo ""
wget -q -O /tmp/ssr https://raw.githubusercontent.com/Gatesccn/GatesccnScripts/main/msg-bar/msg
cat /tmp/ssr > /tmp/ssrrmu.sh
wget -q -O /tmp/ssr https://www.dropbox.com/s/5gq3n6z0pvcbh3v/C-SSR.sh?dl=0
cat /tmp/ssr >> /tmp/ssrrmu.sh
#curl  https://www.dropbox.com/s/5gq3n6z0pvcbh3v/C-SSR.sh >> 
sed -i "s;VPS•MX;Gates-CCN;g" /tmp/ssrrmu.sh
sed -i "s;@Kalix1;Gates-CCN;g" /tmp/ssrrmu.sh
sed -i "s;VPS-MX;Gates-CCN;g" /tmp/ssrrmu.sh
chmod +x /tmp/ssrrmu.sh && bash /tmp/ssrrmu.sh
#sed '/gnula.sh/ d' /tmp/ssrrmu.sh > /bin/ejecutar/crontab
