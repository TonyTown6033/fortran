Program progress
! find y=x^(1/3) 
! y_n+1=2/3*y_n + x / 3*y_n^2

real:: x,y,delta=10.0,y_next,y_intial
print*,'please input the prime x '
read*,x

y_intial=x
y=y_intial

do while(abs(delta)>=0.0001)
  
  y_next=2.0/3*y+x/(3*y*y)
  !print*,'here y is ',y,2/3*y+x/(3*y*y)
  delta=y_next-y
  y=y_next
end do 

print*,'y is ',y
end