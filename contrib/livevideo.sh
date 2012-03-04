#/bin/sh
export DISPLAY=:0
v4l2-ctl /dev/video0 --set-input 1
v4l2-ctl -v width=720,height=576
#Try below to carefully set up the delay difference
#aplay -f dat /dev/video24 &
#mplayer -fs -nocache  -vo vdpau:deint=1  -aspect 16:9 /dev/video32 -demuxer rawvideo -rawvideo w=720:h=576:format=hm12:pal:fps=29.97
 mplayer -fs -nocache  -vo vdpau:deint=1  -aspect 16:9 /dev/video32 -demuxer rawvideo -rawvideo w=720:h=576:format=hm12:pal:fps=29.97 -audiofile /dev/video24 -audio-demuxer rawaudio -rawaudio channels=2:rate=48000
