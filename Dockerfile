FROM jrottenberg/ffmpeg

COPY video.mp4 /video.mp4

CMD ffmpeg -re -i /video.mp4 -f flv rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY
