program main
  external Bisection,f
  real::a=-4,b=4,c=1,eps=1e-5
  call Bisection(a,b,c,f,eps)
  print*,'the root is ',c

end


recursive subroutine Bisection(a,b,c,f,eps)
  !a,b is the boudiary 
  !f is the function of x 
  !eps is the err limition
  
  real::a,b,c,eps
  real::temp1,temp2
  
  c=(a+b)/2
  temp1=f(a)*f(c)
  temp2=f(c)*f(b)
  if (f(c)==0) then
    return 
  elseif(temp1<0) then
    b=c
  elseif(temp2<0) then
    a=c
  end if 
  
  if (abs(b-a)>eps) then
    call Bisection(a,b,c,f,eps)
  end if 
  
end subroutine Bisection
    
real function f(x)
  real::x
  h(x)=1+x-x**3
  f=h(x)
end function