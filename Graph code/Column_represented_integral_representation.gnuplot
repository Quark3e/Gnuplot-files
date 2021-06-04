
# function
f(x) = x**3-2*x**2+2

# limits
x1 = -0.5
x2 = 1.5

# definitions
n = 1
i = x1
nres = 100
xbase = x2 - x1
xwidth = xbase/nres
counter = x1 + xwidth*i

# labeling/details
set xrange [-2:2]
set yrange [0:3]

# to animate res value
# do for
#
#


# plot preparation

do for [n=1:nres] {
    counter = x1 + xwidth*n
    set obj n rect from (counter-xwidth),f(counter-xwidth) to counter,0 fc rgb "purple"
}

# load 'column_crafter.plt'

# plotting

plot f(x)


