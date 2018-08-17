#!/bin/bash
########################################################
# cli_radio                                            #
# based on IceFox radio-select script                  #
#  #
########################################################
# set colors
RED='\e[41m'
BLUE='\e[44m'
CYAN='\e[46m'
NC='\e[0m'
# set player
PLAYER="/usr/bin/mplayer"
# verify if $PLAYER is installed
if [ -e $PLAYER ]; then
    # stop current $PLAYER session
    if [ "$(pidof mplayer)" ]; then
        killall mplayer
    fi
    while true; do
    clear
    echo ""
    echo " ·····················································"
    echo " ·             select a station and play             ·"
    echo " ·                                                   ·"
    echo -e " · $CYAN[space]$NC to pause, $CYAN[q]$NC to stop, $CYAN[Ctrl]+[c]$NC to quit ·"
    echo " ·····················································"
    echo ""
    echo " ·····················································" 
    echo -e " ·  $BLUE  1 $NC  Addict Alternative   $BLUE  2 $NC  Addict Lounge   ·"
    echo -e " ·  $BLUE  3 $NC  Addict Rock          $BLUE  4 $NC  Addict Star     ·"
    echo -e " ·  $BLUE  5 $NC  Best-Hits            $BLUE  6 $NC  Best-Dance      ·"
    echo -e " ·  $BLUE  7 $NC  BFM                  $BLUE  8 $NC  Contact FM      ·"
    echo -e " ·  $BLUE  9 $NC  FG DJ Radio          $BLUE 10 $NC  FG Underground  ·"
    echo -e " ·  $BLUE 11 $NC  FG Vintage           $BLUE 12 $NC  Fréquence Jazz  ·"
    echo -e " ·  $BLUE 13 $NC  Fun Radio            $BLUE 14 $NC  NRJ             ·"
    echo -e " ·  $BLUE 15 $NC  Radio Gerard         $BLUE 16 $NC  Radio Nova      ·"
    echo -e " ·  $BLUE 17 $NC  RTL                  $BLUE 18 $NC  RTL2            ·"
    echo -e " ·  $BLUE 19 $NC  FIP                  $BLUE 20 $NC  custom link...  ·"
    echo " ·····················································"
    echo ""
    echo -e " select a $BLUE number $NC from 1 to 20 then hit $CYAN[Enter]$NC"
    echo ""
    read choix
    case $choix in
        1)
            $PLAYER http://stream1.addictradio.net/addictalternative.mp3
            ;;
        2)
            $PLAYER http://stream1.addictradio.net/addictlounge.mp3
            ;;
        3)
            $PLAYER http://stream1.addictradio.net/addictrock.mp3
            ;;
        4)
            $PLAYER http://stream1.addictradio.net/addictstar.mp3
            ;;
        5)
            $PLAYER http://sv1.vestaradio.com:9500
            ;;
        6)
            $PLAYER http://sv1.vestaradio.com:7420
            ;;
        7)
            $PLAYER http://vipicecast.yacast.net/bfm
            ;;
        8)
            $PLAYER http://broadcast.infomaniak.ch/radio-contact-high.mp3
            ;;
        9)
            $PLAYER http://fg.impek.tv/listen.pls
            ;;
        10)
            $PLAYER http://ufg.impek.tv/listen.pls
            ;;
        11)
            $PLAYER http://fgv.impek.tv/listen.pls
            ;;
        12)
            $PLAYER http://broadcast.infomaniak.ch/frequencejazz-high.mp3
            ;;
        13)
            $PLAYER http://streaming.radio.funradio.fr:80/fun-1-44-128
            ;;
        14)
            $PLAYER http://mp3.live.tv-radio.com/nrj/all/nrj_113225.mp3
            ;;
        15)
            $PLAYER http://www.mistercouzin.net:8000/listen.pls
            ;;
        16)
            $PLAYER http://broadcast.infomaniak.net/radionova-high.mp3
            ;;
        17)
            $PLAYER http://streaming.radio.rtl.fr/rtl-1-44-96
            ;;
        18)
            $PLAYER http://streaming.radio.rtl2.fr:80/rtl2-1-44-96
            ;;
        19)
            $PLAYER http://80.237.154.83:8120
            ;;
        20)
            $PLAYER "http://www.bbc.co.uk/ipl...playlist/bbc_radio_four"
			;;

            
        *)
            echo -e "$RED wrong choice $NC"
            echo "try again..."
            echo ""
            sleep 2
            clear
            ;;
    esac
    done
else
    echo " this script need mplayer"
    echo " install it or change the PLAYER"
    echo "exiting ..."
    exit 0
fi
