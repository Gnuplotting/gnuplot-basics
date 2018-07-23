#!/usr/bin/gnuplot
#
# Plotting data about battery power (see battery.dat)
#
# AUTHOR: Hagen Wierstorf

reset

# x11
set terminal x11 size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'battery_data.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'battery_data.svg'

# color definitions
set border linewidth 1.5
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 # --- blue

unset key
set xlabel 'Resistance (Ω)'
set ylabel 'Power (mW)'
set format y '%.0s'
set tics scale 0.75

plot [-2:52][0:0.12] 'battery.dat' using 1:2:4 w yerrorbars ls 1, \
                     '' w lines ls 1
