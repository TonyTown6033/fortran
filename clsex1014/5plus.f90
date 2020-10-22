program glophysia
integer:: num=0,i=1
integer a(1000)
logical:: flag=.false.
100 format(i5,2x,/)
!print*,'please input a num from 100-999'
!read*,num
do num=100,1000
  a=int(num/100)
  b=int((num-a*100)/10)
  c=num-a*100-b*10
  if(num==(c*c*c+b*b*b+a*a*a)) flag=.true. 
  if(flag) then
    a(i)=num
    i=i+1
    flag=.false.
  !print*,'this num is a glophysia num'
  else
  !print*,'this num is not a glophysia num'
  end if 
end do
do k=1,i-1
  print 100,a(k)
end do
end
