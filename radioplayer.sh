#Play a selected online radio station from a text file
echo -e "\\e[0;0m\n$(cat -b /home/raptor/radiostation|sed 's/http:/\\e[1;35m--- \\e[0;0mhttp:/')\n\n[\\e[0;34m*\\e[0;0m] Number of the radio you want to listen to:\\e[1;32m";read -p "=> " radio;mplayer  -cache-min 50 -cache 100 -ao pulse $(head -n $radio radiostation | tail -1)
