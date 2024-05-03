pwd;

read -p "URL: " URL;
echo $URL;
wget $URL;

filename=$(echo "$URL" | grep -o '[^/]*$');
echo "$filename";

path_to_torrent=/content/$filename;
echo $path_to_torrent;

aria2c -x 10 -s 10 --allow-overwrite --disable-ipv6 --seed-time=0 --seed-ratio=0.0  $path_to_torrent;
