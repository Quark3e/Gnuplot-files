
# function
f(x) = x**3-2*x**2+2

# limits
x1 = 0.5
x2 = 1.5

# definitions
i = 1
nres = 10
xbase = x2 - x1
xwidth = xbase/nres
counter = x1 + xwidth*i

# labeling/details
set xrange [-2:2]
set yrange [0:3]

# plot preparation

load 'column_crafter.plt'

# plotting

plot f(x)


