## Requires data file "using.dat" from this directory,
# so change current working directory to this directory before running.
#

set xrange [1:8]
set title "Convex     November 1-7 1989"
set key below
set label "(Weekend)" at 5,25 center

set style rect fc lt -1 fs solid 0.15 noborder

set obj rect from 1, graph 0 to 2, graph 1
set obj rect from 3, graph 0 to 4, graph 1
set obj rect from 5, graph 0 to 6, graph 1
set obj rect from 7, graph 0 to 8, graph 1

plot 'using.dat' using 3:4 title "Logged in" with impulses,\
     'using.dat' using 3:5 t "Load average" with points,\
     'using.dat' using 3:6 t "%CPU used" with lines

# .dat files will be needed to create data for the graph