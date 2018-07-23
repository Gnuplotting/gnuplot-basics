#!/usr/bin/gnuplot
#
# Plotting data about battery power (see battery.dat)
#
# AUTHOR: Hagen Wierstorf

reset

# png
set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
set output 'battery_data.png'

set border linewidth 1.5
# Set color of linestyle 1 to blue (#0060ad)
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2 pointtype 7

unset key
set xlabel 'Resistance (Ω)'
set ylabel 'Power (mW)'
set tics scale 0.75

set xrange [-2:52]
set yrange [0:0.12]
set format y '%.0s'

plot 'battery.dat' using 1:2:4 with yerrorbars linestyle 1, \
     ''                        with lines linestyle 1
