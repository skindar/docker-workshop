#!/bin/bash
SERVICE="supervisord"

while true
do
    if pgrep -x "$SERVICE" >/dev/null
    then
     :

    else
      echo "$SERVICE stopped"
      supervisord

    fi


    sleep 5
done