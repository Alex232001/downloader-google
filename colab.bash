pwd;

read -p "URL: " URL;
echo $URL;
wget $URL;
echo "Raw не обновляется"
