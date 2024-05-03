pwd;

read -p "URL: " URL;
echo $URL;
wget $URL;
echo "Raw не обновляется";

filename=$(echo "$URL" | grep -o '[^/]*$');
echo "$filename";
