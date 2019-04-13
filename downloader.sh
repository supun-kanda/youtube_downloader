file=$1
path=$2
if [ ! -z $file ] && [ ! -e $file ]; then
    echo "Given File not exists. Please give a valid 1 file as an argument"
    exit
fi
if [ ! -z $path ] && [ ! -d $path ]; then
    echo "Given path not exists. Please give a valid path as an argument"
    exit
fi

expand=`cat $file`

echo "Start!"
for p in $expand; do
    url="https://www.youtube.com/watch?v=${p}"
    echo "$url will be downloaded to $path" 
    youtube-dl -f best -o $path/'%(title)s.%(ext)s' $url
done
echo "Finish"
