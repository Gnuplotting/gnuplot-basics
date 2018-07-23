#!/usr/bin/gnuplot
#
# Plotting the data of file plotting_data1.dat
#
# AUTHOR: Hagen Wierstorf

reset

# x11
set terminal x11 size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'plotting_data1.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'plotting_data1.svg'

set border linewidth 1.5
# Set first linestyle to blue (#0060ad)
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2 \
                                         pointtype 7 pointsize 1.5

unset key

set ytics 1
set tics scale 0.75

set xrange [0:5]
set yrange [0:4]

plot 'plotting_data1.dat' with linespoints linestyle 1
