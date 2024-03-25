#' https://www.mosaic-web.org/MOSAIC-Calculus/

h <- function(v0, t, g=9.81)
  -1/2*g*t^2 +v0*t
v <- function(v0, t, g =9.81)
  -g*t + v0


h(v0=10,0:10)


require(mosaicCalc)


#?slice_plot(-1/2*g*t^2 + v0*t ~t, domain(t = range(0, 10)))
h <- makeFun(-1/2*g*t^2 + v0*t ~ t)
v <- makeFun(  -g*t + v0 ~ t)

slice_plot(v(t, v0 =30, g=9.81) ~ t, domain(t = 0:5.5))
