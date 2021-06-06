# original bessel loop

# t = 0
# end_time = 1

# if(t<end_time) {
#	t = t + 0.02
#	splot u*sin(v),u*cos(v),bessel(u,t) w pm3d ls 1
# }



# original
reset
set palette rgb 3,9,9

unset key; unset colorbox; unset border; unset tics
set lmargin at screen 0.03
set bmargin at screen 0
set rmargin at screen 0.97
set tmargin at screen 1

unset key; unset colorbox; unset border; unset tics
set lmargin at screen 0.03
set bmargin at screen 0
set rmargin at screen 0.97
set tmargin at screen 1

set parametric

# Bessel function, which is moving in time
bessel(x,t) = besj0(x) * cos(2*pi*t)

# calculate the zeros for the bessel function (see Watson, "A Treatise on the
# Theory of Bessel Functions", 1966, page 505)
n = 6 # number of zeros
k = (n*pi-1.0/4*pi)
u_0 = k + 1/(8*k) - 31/(384*k)**3 + 3779/(15360*k)**5

# splot u*sin(v),u*cos(v),bessel(u,t)

t = 0

# range settings
set urange [0:u_0]
set vrange[0:1.5*pi]
set cbrange [-1:1]
set zrange[-1:1]

# details
set xlabel "X axis"
set ylabel "Y axis"
set zlabel "Z" offset 1, 0
set view 60, 30, 0.85, 1.1
set key at screen 1.0, 0.9
set title "Bessel function"

set xtics 2
set ytics 2
set ztics 5

set isosamples 200,100
set pm3d depthorder
set view 48, 198, 0.7, 0.4

splot u*sin(v),u*cos(v),bessel(u,t)


# convert to gif
# cd 'C:\Users\aa82637\Desktop\Github repository folder\Github main content repo\Github-directory\Gnuplot-files\Graph code\Bessel function gifs'
# set terminal gif animate delay 6
# set output "Manual bessel function 0th order.gif"
# do for [t=0:100:1] { splot u*sin(v),u*cos(v),bessel(u,t*0.01) w pm3d ls 1}; set terminal qt; t=0; replot;
# to change it's rotation, it's scale needs to be between 0 and 360, where 50 = 360 and 0 = 0. 7.2t.


