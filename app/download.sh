file=$(mktemp temp.XXXXXXXXX)
lynx -dump -listonly --nonumbers $1 | grep video/ | sed '$!N; /^\(.*\)\n\1$/!P; D' | sort | uniq >> $file
/root/pyvenv/bin/yt-dlp -ciw -a $file -o "/downloads/%(title)s.%(ext)s" --external-downloader aria2c --external-downloader-args '-c -j 10 -x 3 -s 3 -k 1M'

if [ -f "lista.txt" ] ; then
    rm -r lista.txt
fi

rm -r $file