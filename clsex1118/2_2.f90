program main
  integer::n=100
  real::sum=0,h=0,a=0,b=1
!  print*,'pls input the under and up line of int'
!  read*,a,b
!  print*,'pls input the err limition'
!  read*,h  
  h=1e-4
  print 100,h
  100 format('the err limit is ',2x,f15.9)
  iteration=it(a,b,h)
  print*,'there should iterate ',iteration,'times'
  sum=simpson(a,b,iteration)
  
  print*,'the result of second integral is',sum
    

contains

real function simpson(a,b,n)
  f(x)=((1+x*x)**0.333333333-(1-x*x)**0.333333333)/2
  
  integer::n
  real::a,b,h,sum=0
        h=(b-a)/n
  
  
  sum=f(a)+f(b)
  do i=0,n-1
    x=a+i*h
    sum=sum+4*f(x+0.5*h)
  end do
  do i=1,n-1
    x=a+i*h
    sum=sum+2*f(x)
  end do  
  sum=sum/6*h  
  
  
  simpson=sum
end function

integer function it(a,b,h)
!  external simpson
  real::a,b,h
  integer::n=0 
  f4max=1e10     ! f''''_max 
  
  n=(b-a)*(1*f4max/(2880*h))**(0.25)+1
  
  it=n
end function it

end
