Program cosine
! cos(0.2)=1-0.02+6.666e-5-8.888e-8
!! Intialization
real::x=0,t=1,cos_x=0
      n=0
T_intial = 1
!f(x1,x2,x3)=-x1*x1*x3/((2*x2+2)*(2*x2+1))                         

!! Input

print*,'please input the x (near the 0)'
read*,x
print*,'Input complete check x is ',x

!! Calcute
cos_x=T_intial
t=T_intial
do while (abs(t)>1E-7)
  !print*,'t',t,'n',n
  t=-x*x*t/((2*n+2)*(2*n+1))
  cos_x=cos_x+t
  n=n+1
end do

!! Print Result
!print*,n-1,t
print 100,x,cos_x
100 format(2x,'cos ',f5.3,' is ',x,f7.5)
end  