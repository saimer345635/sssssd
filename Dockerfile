FROM jrottenberg/ffmpeg

RUN apt-get update && apt-get install -y curl

RUN curl -L -o /video.mp4 https://YOUR_DIRECT_VIDEO_LINK.mp4

CMD ["ffmpeg",
"-re",
"-stream_loop", "-1",
"-i", "/video.mp4",
"-c:v", "libx264",
"-preset", "veryfast",
"-b:v", "3000k",
"-c:a", "aac",
"-f", "flv",
"rtmp://a.rtmp.youtube.com/live2/YOUR_STREAM_KEY"]
