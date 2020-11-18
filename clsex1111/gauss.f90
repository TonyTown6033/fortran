!Data Input
parameter(max=1000)

real:: A(max,max+1),b(max,max+1),C(max),h=0,X(max)
integer:: num(4)

print*,'please input the num of vari'
read*,n

print*,'please input the aumented matriX'
read*,((A(i,j),j=1,n+1),i=1,n)

!Down triangle the matriX

b=A

do i=1,n-1
  do j=1,i

    b(n-i,:)=b(n-i,:)-b(n-i,n-j+1)/b(n-j+1,n-j+1)*b(n-j+1,:)
  end do
end do
print*,'out of the cycle'
! check output
do i=1,n
  do j=1,n+1
    print 100,A(i,j)
  end do
  print*
end do
print*

! Calculate the answer
do i=1,n
  do j=1,i-1
    b(i,:)=b(i,:)-b(i,j)/b(j,j)*b(j,:)
  end do
end do

do i=1,n
    if (b(i,i)/=0) then
      b(i,:)=b(i,:)/b(i,i)
    else
      b(i,:)=0
    end if
end do

do i=1,n
  do j=1,n+1
    print 100,b(i,j)
  end do
  print*
end do

print*,'X is '
do i=1,n
  print*,b(i,n+1)
end do
100 format(2x,f5.2$)
print*
end
