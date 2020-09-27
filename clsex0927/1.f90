program maxminarrange
real a,b,c
print*,'please input the three number'
read*,a,b,c
m1=MAX(a,b,c)
m2=MIN(a,b,c)
!print*,'max',m1,'min',m2
!pause
print*,'the arrangement is as follows'
print*,m2,a+b+c-m2-m1,m1
end