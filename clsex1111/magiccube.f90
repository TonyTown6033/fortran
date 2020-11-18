program magicube
parameter(max=100)
integer:: n,i=1,j,cube(max,max)
print*,'pls input the rank of the magicube ,rank should be a odd num'
read*,n
if (n>max) then
  print*,'the n is too large try to change the max or to input smaller one'
  read*,n
end if
j=n/2+1
do num=1,n*n

  cube(i,j)=num
  i=i-1
  j=j+1
  if (i<1) then
    i=n
  end if
  if (j>n) then
    j=1
  end if
  if (cube(i,j)/=0) then
    i=i+1
  end if
end do

do i=1,n
  do j=1,n
    print 100,cube(i,j)
  end do
  print*
end do
100 format(2x,i5$)
end
