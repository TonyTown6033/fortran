program main
  integer::n=100
  real(4)::sum=0,h,a=0,b=1
!  print*,'pls input the under and up line of int'
!  read*,a,b
  print*,'pls input the err limition'
  read*,h  
  print 100,h
  100 format('the err limition is',2x,f15.9)
  iteration=it(a,b,h)
  print*,'there should iterate ',iteration,'times'
  sum=simpson(a,b,iteration)
  
  print*,'the result of third integral is',sum
    

contains

real function simpson(a,b,n)
  f(x)=4/(1+x*x)
  
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
  integer::n
  f4max=1 ! f''''_max 
  
  n=(b-a)*(1*f4max/(2880*h))**0.25+1
  
  it=n
end function it

end
