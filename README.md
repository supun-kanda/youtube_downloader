# youtube_downloader
This is a very simple script to download youtube videos periodically/Scheduled in a customized way in Linux. 

You need to have following modules crontab, youtube-dl
Normally linux OS have crontab preinstalled. Anyway check that with following command and check whether a local path is shown. 
```
which crontab
```

if not install use following command. Learn about crontab from [here](https://www.rosehosting.com/blog/ubuntu-crontab/)
```
sudo apt-get install cron
```

youtube-dl is a command line programme to download videos from youtube. It can be download as follows
```
sudo apt-get install youtube-dl
```

All done! now you all you need to do is this clone this repo using following command. And go inside
```
git clone https://github.com/supun-kanda/youtube_downloader.git
cd youtube_downloader
```

Create a file including all ids of videos you intend to download. A sample file is included in the directory named ```test```

youtube id is what the 11-letters appears after watch?v=

For example the id of youtube link ```https://www.youtube.com/watch?v=IXdNnw99-Ic``` is ```IXdNnw99-Ic```. Line them on the file you wish to contain.

If you want to do it now just use following command. And all files will be downloaded to the directory ```youtube_downloader```
```
sh downloader.sh file_with_ids
```


If you want to schedule it. You can use crontab. I have given an example below to run the script daily at 12AM. You can customize it using the tutorial on crontab given by the previous [link](https://www.rosehosting.com/blog/ubuntu-crontab/)
```
crontab -e
```

Then there will be a page with comments of what crontab is. In here the vim comes in. You have to deal with vim. If you are not familiar, just use this [link](https://paulgorman.org/technical/vim5minutes.html). 

Just add a new line at last as follows. Use absolute paths on files.
```
0 0 * * * sh /absolute/path/to/file/downloader.sh /absolute/path/to/file/link_file /absolute/path/to/file/ >> /absolute/path/to/file/output.log
```

Since this /absolute/path/to/file is overwhelming try this
```
abs_path='/absolute/path/to/file'
0 0 * * * sh $abs_path/downloader.sh $abs_path/link_file $abs_path >> $abs_path/output.log
```


If you feel like done and to get rid of this automated exicution, Remove all cronjobs by follwing command
```
crontab -r
```
