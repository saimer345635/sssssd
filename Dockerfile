FROM jrottenberg/ffmpeg

COPY video.mp4.mp4 /video.mp4.mp4

CMD ffmpeg -re -stream_loop -1 -i /video.mp4.mp4 -c:v libx264 -preset veryfast -b:v 3000k -c:a aac -f flv "rtmp://app.stream24.io/live/50ge-wd0t-p830-c67a-c8ym"
