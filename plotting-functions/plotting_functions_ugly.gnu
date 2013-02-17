#!/usr/bin/gnuplot
#
# Plot trigonometric functions with Gnuplot
#
# AUTHOR: Hagen Wierstorf 

reset

# wxt
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'plotting_functions_ugly.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'plotting_functions_ugly.svg'

# Line styles
set border linewidth 1.5
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2  # blue
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2  # red

# Functions to plot
a = 0.9
f(x) = a * sin(x)
g(x) = a * cos(x)

# Plot
plot f(x) title 'sin(x)' with lines ls 1, \
     g(x) notitle with lines ls 2

