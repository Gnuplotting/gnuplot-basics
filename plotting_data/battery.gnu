#!/usr/bin/gnuplot
#
# Plotting data about battery power (see battery.dat)
#
# AUTHOR: Hagen Wierstorf

reset

# wxt
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'battery.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'battery.svg'

# color definitions
set border linewidth 1.5
set style line 1 lc rgb '#0060ad' lt 1 lw 2 # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 7 # --- red

set key at 50,112
set xlabel 'Resistance (Ω)'
set ylabel 'Power (mW)'
set tics scale 0.75

# Therotecial curve
P(x) = 1.53**2 * x/(5.67+x)**2 * 1000

plot [-2:52][0:120] 'battery.dat' u 1:($2*1000):($4*1000) \
                        t 'Power' w yerrorbars ls 2, \
                    P(x) t 'Theory' w lines ls 1
