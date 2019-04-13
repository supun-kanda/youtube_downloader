file=$1
if [ ! -z $file ] && [ ! -e $file ]; then
    echo "Given File not exists. Please give a valid 1 file as an argument"
    exit
fi

expand=`cat $file`

echo "Start!"
for p in $expand; do
    url="https://www.youtube.com/watch?v=${p}"
    echo $url 
    youtube-dl -f best $url
done
echo "Finish"