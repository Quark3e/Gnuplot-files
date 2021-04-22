
m=0.5
b=0
c=0
f=3
n=0

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
splot (m*sin(sqrt((x-b)**2+(y+c)**2)*f-n))+(m*sin(sqrt((x+b)**2+(y+c)**2)*f-n))