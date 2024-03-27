#!/usr/bin/env bash

bat_files="/sys/class/power_supply/BAT0"
bat_status=$(cat "${bat_files}/status")
capacity=$(cat "${bat_files}/capacity")

if [[ ${bat_status} == "Discharging" && ${capacity} -le 20 ]]; then
    notify-send -u critical "ACHTUUUUUUUUUUUUNG. LOW BATTERY!!!!"
fi
