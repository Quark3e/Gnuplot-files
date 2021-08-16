


# {Wave function

# splot (am*sin(sqrt((x-xo)**2+(y+yo)**2)*f+an))+(am*sin(sqrt((x+xo)**2+(y+yo)**2)*f+an))

# [if a correct water wave is to be formed, the formula needs to change +an to -an]

# am = amplitude
# xo = x offset
# yo = y offset
# f = frequency
# an = animation

# [an example]

# constant definitions
am=0.5
xo=0
yo=0
f=3
an=0

# details
set isosamples 80
set samples 40
set cntrparam levels 10

set contour

# labeling
set xlabel "X axis"
set ylabel "Y axis"
set zlabel "Z" offset 1, 0
set view 60, 30, 0.85, 1.1
set key at screen 1.0, 0.9
set title "Wave Formation in a Fabric"

set xtics 2
set ytics 2
set ztics 5

# function
splot (am*sin(sqrt((x-xo)**2+(y+yo)**2)*f-an))+(am*sin(sqrt((x+xo)**2+(y+yo)**2)*f-an))
# }


# {"Double slit experiment" wave positioning
am=0.5
xo=3
yo=-10
f=3
an=0
# }


# {Creating a gif file
# cd '[folder direciton]'
# f(x,y,[the changing variable])=[the 3D function]        
# set terminal gif animate delay 4
# set output "[name of file.gif]"
# do for [i=1:96] { splot f(x,y,i*0.1) }
# }

# example
# cd 'C:\Users\aa82637\Videos\Gnuplot animation outputs'
# f(x,y,an)=(am*sin(sqrt((x-xo)**2+(y+yo)**2)*f-an))+(am*sin(sqrt((x+xo)**2+(y+yo)**2)*f-an))
# set terminal gif animate delay 4
# set output "Wave 2.gif"
# do for [i=1:96] { splot f(x,y,i*0.1) w pm3d 1s 1}; set terminal window; replot

#example: do for [i=1:3600] { splot f(x,y,i*-0.3); set view 60, i*0.1, 0.85, 1.1;}; set terminal window; splot (am*sin(sqrt((x-xo)**2+(y+yo)**2)*f-an))+(am*sin(sqrt((x+xo)**2+(y+yo)**2)*f-an))