#!/bin/bash

OAUTH=~/home/zachary/.cache/acd_cli/oauth_data

while true
do
    echo "Uploading...";
        acdcli upload /home/zachary/mounts/.local-sorted/* /;
            echo "Syncing...";
                acdcli sync;
                    if grep '"expires_in": 3600,' $OAUTH; then
                            EXP=$(grep exp_time $OAUTH | grep -Po "\d{10}")
                                    sed -i "/exp_time/s/$EXP/$(($EXP-1800))/;/expires_in/s/3600/1800/" $OAUTH
                                        fi
                                            echo "Sleeping..."
                                                sleep 60;
                                                done
