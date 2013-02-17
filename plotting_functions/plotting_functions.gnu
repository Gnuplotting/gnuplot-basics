#!/usr/bin/gnuplot
#
# Plot trigonometric functions with Gnuplot. 
#
# AUTHOR: Hagen Wierstorf 

reset

# wxt
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'plotting_functions.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'plotting_functions.svg'

# Line styles
set border linewidth 1.5
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2  # blue
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2  # red
# Legend
set key at 6.1,1.3
# Axes label 
set xlabel 'x'
set ylabel 'y'


# Axis ranges
set xrange[-2*pi:2*pi]
set yrange[-1.5:1.5]
# Axis labels
set xtics ("-2π" -2*pi, "-π" -pi, 0, "π" pi, "2π" 2*pi)
set ytics 1
set tics scale 0.75
# Functions to plot
a = 0.9
f(x) = a * sin(x)
g(x) = a * cos(x)
# Plot
plot f(x) title 'sin(x)' with lines ls 1, \
     g(x) notitle with lines ls 2

