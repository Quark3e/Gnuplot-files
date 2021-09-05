# function
f(x) = x**3-2*x**2+2
F(x) = ((x**4)/4-(2*(x**3))/3+2*x)  #NOTE: Change primitive function if f(x) is changed
# limits
x1 = -1
x2 = 2.5
# definitions
n = 1
nres = 13
nresmax = 90
xbase = x2 - x1
xwidth = xbase/nres
counter = x1 + xwidth*n
GifDelay = 1
RealIntegralValue = F(x2) - F(x1)
round(x) = x - floor(x) < 0.5? floor(x) : ceil(x)  #rounding the numbers
round2(x, n) = round(x*10**n)*10.0**(-n)  #rounding the numbers with n decimals
# labeling/details
set xrange [-2:4]
set yrange [-2:4]
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
set label 1 sprintf("Area of Columns: %.3f\n \nActual Integral Value %.3f\n \nNumber of Columns: %.f", TotalAreaText, RealIntegral, nres)
set label 1 at -0.8,3.5 front center   

plot x**3-2*x**2+2

# cd 'C:\Users\aa82637\Desktop\Github repository folder\Github main content repo\Github-directory\Gnuplot-files\Graph code\Column Integral visualation gifs'
# set terminal gif animate delay GifDelay
# set output "Column demonstration animation21.gif"
# do for [nresval = nres:nresmax] {
#     TotalArea = 0.000
#     xwidth = xbase/nresval
#         do for [n = 1:nresval] {
#             counter = x1 + xwidth*n
#             set obj n rect from (counter-xwidth),f(counter-xwidth) to counter,0 fc rgb "purple";

#             area(n) = xwidth * f(counter-xwidth)
#             TotalArea = TotalArea + area(n)

#             n = n + 1
#             }
#         TotalAreaText = round2(TotalArea, 4)
#         RealIntegral = round2(RealIntegralValue, 4)
#         set label 1 sprintf("Area of Columns: %.3f\n \nActual Integral Value %.3f\n \nNumber of Columns: %.3f", TotalAreaText, RealIntegral, nresval)
#         set label 1 at -1.1,2.75 front center

#         plot x**3-2*x**2+2

#         if (nresval != nresmax) {
#             do for [i=0:(round(nresmax-nresval)/30)**2] {plot x**3-2*x**2+2}
#         }
#     }
# set terminal qt; replot

