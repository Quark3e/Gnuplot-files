
# function
f(x) = x**3-2*x**2+2
F(x) = ((x**4)/4-(2*(x**3))/3+2*x)  #NOTE: Change primitive function if f(x) is changed

# limits
x1 = -0.5
x2 = 1.5

# definitions
n = 1
nres = 3
nresmax = 80
xbase = x2 - x1
xwidth = xbase/nres
counter = x1 + xwidth*n

RealIntegralValue = F(x2) - F(x1)

round(x) = x - floor(x) < 0.5? floor(x) : ceil(x)  #rounding the numbers
round2(x, n) = round(x*10**n)*10.0**(-n)  #rounding the numbers with n decimals


# labeling/details
set xrange [-2:2]
set yrange [0:3]
set title "Integral area representation"
set grid

# plot preparation
TotalArea = 0.0000

do for [n=1:nres] {
    counter = x1 + xwidth*n
    set obj n rect from (counter-xwidth),f(counter-xwidth) to counter,0 fc rgb "purple"

    area(n) = xwidth * f(counter-xwidth)

    TotalArea = TotalArea + area(n)
}

TotalAreaText = round2(TotalArea, 4)
RealIntegral = round2(RealIntegralValue, 4)

set label 1 sprintf("Area of Columns: %.3f\n \nActual Integral Value %.3f\n \nNumber of Columns: %.3f", TotalAreaText, RealIntegral, nres)
set label 1 at -1.1,2.75 front center   

#set obj 10 rect at -1,2.5 size char strlen(LABEL), char 1 
#set obj 10 fillstyle empty border -1 front

# plotting

plot x**3-2*x**2+2


# to animate column resolution value



cd 'C:\Users\aa82637\Videos\Gnuplot animation outputs'
set terminal gif animate delay 16
set output "Column demonstration animation15.gif"
do for [nres = 4:nresmax] {
    TotalArea = 0.000
    xwidth = xbase/nres
        do for [n = 1:nres] {
            counter = x1 + xwidth*n
            set obj n rect from (counter-xwidth),f(counter-xwidth) to counter,0 fc rgb "purple";

            area(n) = xwidth * f(counter-xwidth)

            TotalArea = TotalArea + area(n)

            n = n + 1
            }

        TotalAreaText = round2(TotalArea, 4)
        RealIntegral = round2(RealIntegralValue, 4)

        set label 1 sprintf("Area of Columns: %.3f\n \nActual Integral Value %.3f\n \nNumber of Columns: %.3f", TotalAreaText, RealIntegral, nres)
        set label 1 at -1.1,2.75 front center

        plot x**3-2*x**2+2
    }
set terminal window; replot

