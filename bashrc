# Fetian Bashrc File
# Save file at ~/.bashrce
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias sys='neofetch'
alias slink='python ~/.scripts/slink.py'
alias ac='python /home/fetian/Clone/acloud-dl/acloud-dl.py'


###git###
g(){
git add . ; git commit -m "$1" ; git push; 
}
#######tr#######################
tr(){
trans "$1" -speak -s en -t ar
}
####downloadFromTarUsingPacman##
alias pactar='sudo pacman -U'
tarxf(){
tar xf "$1" -C "$2"
}
#WIFI###########################
alias wifils='nmcli dev wifi list'
wific(){
nmcli dev wifi connect "$1"
} 
##emulatorAndroid################################
alias emulator='qemu-system-x86_64 -enable-kvm -m 2048 -smp 2 -cpu host -device es1370 -device virtio-mouse-pci -device virtio-keyboard-pci -serial mon:stdio -boot menu=on -net nic -net user,hostfwd=tcp::5555-:22 -display gtk,gl=on -cdrom android-x86_64-9.0-r2.iso'
##to exit go to terminal and type => poweroff####
##openoffice4#######################
alias office=openoffice4
alias soffice='/opt/openoffice4/program/soffice'
alias writer='/opt/openoffice4/program/soffice -writer'
alias excel='/opt/openoffice4/program/soffice -calc'
alias pptx='/opt/openoffice4/program/soffice -impress'

#Radio############################
alias radio='echo -e "quran\nBBC\nEN\ndayOld\nmegaFm\njazeera\nsports\nnews\nmadina\nmakkah\nmusic\nUMkalthom\nDRmustafa\nFM\nONsport\negypt"'
alias quran='mpv http://n0f.radiojar.com/8s5u5tpdtwzuv?rj-ttl=5&rj-tok=AAABfigKbuMADgutpkJLypXJYQ'
alias egypt='mpv http://streaming.radio.co/scc13a6b96/listen'
alias ONsport='mpv http://livstream.xyz:8020/stream.mp3'
alias FM='mpv https://reach-audio.esteam.rocks/radio/8000/live.mp3'
alias DRmustafa='mpv http://livstream.xyz:8050/radio.mp3'
alias UMkalthom='mpv http://livstream.xyz:8010/radio.mp3'
alias jazeera='mpv --no-video https://www.youtube.com/watch?v=eJ6ZMd4sVrI'
alias sports='mpv --no-video https://www.youtube.com/watch?v=0Y-IRcUJi6o'
alias news='mpv --no-video https://www.youtube.com/watch?v=2gVOPpiiL3A'
alias madina='mpv --no-video https://www.youtube.com/watch?v=0EG4RIEKYQ0'
alias makkah='mpv --no-video https://www.youtube.com/watch?v=g7ZrwTaroAc'
alias music='mpv --no-video https://www.youtube.com/watch?v=esX7SFtEjHg'
alias dayOld='mpv --no-video http://node-21.zeno.fm/xda10sbtsg0uv?rj-ttl=5&rj-tok=AAABfflawy8AEhDeDRIa6GuRVw'
alias megaFm='mpv http://nebula.shoutca.st:8211/mp3'
alias EN='mpv https://n07.radiojar.com/ycff5hcs92quv?rj-ttl=5&rj-tok=AAABffliBzsATN_xgLhP3pVMZg'
alias BBC='mpv --no-video https://mp4.cbc.ca/revenue/clips/video/350/GEM_DEC_LifeinTenPictures_OntheSpecturm_PreRoll_30.mp4'
#######################################

alias udemy-mp4='echo "Enter m3u8 link:";read link;echo "Enter output filename:";read filename;ffmpeg -i "$link" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $filename.mp4'
alias tar='tar -xzf'
alias f1='cd /home/fetian/Linkedin-Courses/become-a-kalbonyanElmarsos-developer/1_Linkedin-Learning'
alias 33="echo  'KeepGo:#####                    (33%)'"
alias 66="echo  '3ash:#############            (66%)'"
alias 100="echo  'Congratulations:####################### (100%)'"
alias ls='ls --color=auto'
alias lt='ls -Alhtr'
alias dmp3='youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"' 
alias dmp4="youtube-dl -o '%(title)s by %(uploader)s on %(upload_date)s in %(playlist)s.%(ext)s'"
alias dmp4-srt="youtube-dl --write-sub --sub-lang en"
alias cpwd='pwd | xclip -selection clipboard'
alias disc=lsblk
alias usbmount='sudo mount /dev/sdb1 /media/usb'
alias usbumount='sudo umount /media/usb'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'

###########################
csv2json(){

cat "$1" | python -c 'import csv, json, sys; f = open("out.json", "x"); f.write(json.dumps([dict(r) for r in csv.DictReader(sys.stdin)])); f.close()'
}

pdf2pic(){

gs -dSAFER -r600 -sDEVICE=pngalpha -o  "$1" "$2"

}

pic2pdf(){
mogrify -format pdf '$1'
}

houda ()
{
 cp "$1" ~/Nice/
}
notify()
{
  zenity --info --text="$1"

}

mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}
cpfile()
{
  cat -- "$1" | xclip -selection clipboard
}

#########################


###export PATH="$HOME/bin:$PATH"


# fetian edit PS1
#PS1='[\u@\h \W]\$ '


PS1='[Hi! \u-> \W]\n-> \$ '


figlet Fetian Anas

#timer alias
alias 30m='bash ~/.scripts/timer/timer.sh 30 m ~/.scripts/timer/audio/duck.wav'
alias 1h='bash ~/.scripts/timer/timer.sh 1 h ~/.scripts/timer/audio/duck.wav'
alias 2h='bash ~/.scripts/timer/timer.sh 2 h ~/.scripts/timer/audio/fatma.mp3'
alias 20m='bash ~/.scripts/timer/timer.sh 20 m ~/.scripts/timer/audio/ash.mp3'

#fetian alias
alias c=clear
alias e=exit
alias t=calcurse
alias n=figlet
alias ll='ls -al'
alias pdf=zathura
alias pic=sxiv
#alisa volume +3%
#sink#'pactl -- set-sink-volume $SINK +110%'
#alias vol3='pactl list | grep -oP 'Sink #\K([0-9]+)' | while read -r i ; do pactl -- set-sink-volume $i +3% ; done'
alias vol5='pactl -- set-sink-volume 0 +5%'
alias 5vol='pactl -- set-sink-volume 0 -5%'
#alias xclip image
alias screenclip='maim -u -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png'

#mpvClip
alias tub='mpv $(xclip -o)'

#alias screenCAST
alias screencast='bash ~/.scripts/screen-recorder.sh'


#export npm
export PATH=~/.npm-global/bin:$PATH

#export soffice
export PATH=/opt/openoffice4/program/soffice:$PATH

#fetian flutter

#export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'

export ANDROID_SDK_ROOT='/opt/android-sdk'

export ANDROID_HOME=/usr/lib/android-sdk

export PATH=/opt/android-sdk/tools/bin:$PATH

export PATH=/opt/android-sdk/tools/:$PATH

# Android SDK
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
PATH=$ANDROID_HOME/emulator:$PATH


export PATH=$PATH:/opt/google/chrome

export PATH=~/.local/bin:$PATH

# git-completion.sh

if [ -f ~/.git-completion.bash ];then
	source .git-completion.bash

fi
