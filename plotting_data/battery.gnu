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
#set output 'battery.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'battery.svg'

set border linewidth 1.5
# Set first two line styles to blue (#0060ad) and red (#dd181f)
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2 pointtype 7

set key at 50,112
set xlabel 'Resistance (Ω)'
set ylabel 'Power (mW)'
set tics scale 0.75

# Theoretical curve
P(x) = 1.53**2 * x/(5.67+x)**2 * 1000

plot [-2:52][0:120] 'battery.dat' u 1:($2*1000):($4*1000) \
                        title 'Power' with yerrorbars ls 2, \
                    P(x) title 'Theory' with lines ls 1
