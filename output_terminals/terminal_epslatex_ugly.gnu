#!/usr/bin/gnuplot
#
# Demonstrates a simple usage of gnuplot.
#
# AUTHOR: Hagen Wierstorf 

reset

# epslatex
set terminal epslatex size 3.5,2.62 standalone color colortext 10
set output 'terminal_epslatex_ugly.tex'

# Line styles
set border linewidth 1.5
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2  # blue
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2  # red
# Legend
set key at 6.1,1.3
# Axes label 
set xlabel '$x$'
set ylabel '$y$'
# Axis ranges
set xrange[-2*pi:2*pi]
set yrange[-1.5:1.5]
# Axis labels
set format '$%g$'
set xtics ('$-2\pi$' -2*pi, '$-\pi$' -pi, 0, '$\pi$' pi, '$2\pi$' 2*pi)
set ytics 1
set tics scale 0.75
# Functions to plot
a = 0.9
f(x) = a * sin(x)
g(x) = a * cos(x)
# Plot
plot f(x) title '$\sin(x)$' with lines ls 1, \
     g(x) notitle with lines ls 2

