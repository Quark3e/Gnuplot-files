
set title "data plotting test"
set xlabel "x -axis"
set ylabel "y -axis"
set zlabel "z -axis"


set ticslevel 0
set xrange [-400:400]
set yrange [0:400]
set zrange [0:540]


# set contour
set view 45, 45, 1.1, 1
# set dgrid3d
set grid
set cntrparam

# set dgrid3d 30, 30


splot "ws-top_z_val.dat"


# do for [i=1:100] {
#     splot "test.dat"
#     set view 50, i, 0.85, 1.1
#     }