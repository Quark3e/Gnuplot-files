
am=0.5
xo=0
yo=0
f=3
an=0

set isosamples 80
set samples 40
set cntrparam levels 10

set xlabel "X axis"
set ylabel "Y axis"
set zlabel "Z" offset 1, 0
set view 60, 30, 0.85, 1.1
set key at screen 1.0, 0.9
set title "Wave Formation in a Fabric"

set xtics 2
set ytics 2
set ztics 5

set contour
splot (am*sin(sqrt((x-xo)**2+(y+yo)**2)*f-an))+(am*sin(sqrt((x+xo)**2+(y+yo)**2)*f-an))