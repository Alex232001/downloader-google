pwd;

read -p "URL: " URL;
echo $URL;
wget $URL;
echo "Raw не обновляется";

filename=$(echo "$URL" | grep -o '[^/]*$');
echo "$filename";

path_to_torrent=/content/$URL;
echo $path_to_torrent;
