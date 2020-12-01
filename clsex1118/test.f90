program main

  parameter(power=1/3)
  f(x)=((1+x*x)**power-(1-x*x)**power)/2
  real::a,b
  b=0.5
  a=f(b)
 
 
 print*,a
 end