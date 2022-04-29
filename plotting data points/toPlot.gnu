
set title "data plotting test"
set xlabel "x -axis"
set ylabel "y -axis"
set zlabel "z -axis"


set xrange [-400:400]
set yrange [0:400]
set zrange [0: 540]

set contour
set view 30, 60, 1, 1

splot "ws-list.dat"


# do for [i=1:100] {
#     splot "test.dat"
#     set view 50, i, 0.85, 1.1
#     }