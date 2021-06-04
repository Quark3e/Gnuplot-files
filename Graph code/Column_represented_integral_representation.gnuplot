
# function
f(x) = x**3-2*x**2+2

# limits
x1 = -0.5
x2 = 1.5

# definitions
n = 1
nres = 4
xbase = x2 - x1
xwidth = xbase/nres
counter = x1 + xwidth*i

# labeling/details
set xrange [-2:2]
set yrange [0:3]
set title "Integral area representation"

# to animate column resolution value
# cd 'C:\Users\aa82637\Videos\Gnuplot animation outputs'
# set terminal gif animate delay 4
# set output "Column demonstration animation1.gif"
# do for [nres=4:60] { xwidth = xbase/nres; do for [n=1:nres] { counter = x1 + xwidth*n; set obj n rect from (counter-xwidth),f(counter-xwidth) to counter,0 fc rgb "purple"; n=n+1}; plot x**3-2*x**2+2; pause 20}; set terminal window; replot

# plot preparation

do for [n=1:nres] {
    counter = x1 + xwidth*n
    set obj n rect from (counter-xwidth),f(counter-xwidth) to counter,0 fc rgb "purple"
}

# load 'column_crafter.plt'

# plotting

plot x**3-2*x**2+2


