#!/usr/bin/gnuplot
#
# Plot trigonometric functions with Gnuplot
#
# AUTHOR: Hagen Wierstorf 

reset

# png
set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
set output 'plotting_functions_ugly.png'

set border linewidth 1.5
# Set first two line styles to blue (#0060ad) and red (#dd181f)
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2

# Functions to plot
a = 0.9
f(x) = a * sin(x)
g(x) = a * cos(x)

# Plot
plot f(x) title 'sin(x)' with lines linestyle 1, \
     g(x) notitle with lines linestyle 2

