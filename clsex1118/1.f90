program main
!  implicit none
  parameter(max=100)
  integer::n=0,k=0
  real::A(max),ave_1
!input the data ,save as A
  print*,'pls input the num of the data'
  read*,n
  print*,'pls enter the data'
  read*,(A(i),i=1,n)
  print*,'Loading complete'
  
! input the rank of the moment 
  if (1==0) then
  print*,'pls input the rank of the moment you wanna compute'
  read*,k
  end if
! print the result
  ave_1=ave(A,n)
  print*,'the ave of data is ',ave_1
  print*,'the  Standard Deviation of data is ',SD(A,ave_1,n)

  print*,'the 3 monment of the data is ',kmonment(A,n,3,ave_1)
  
  print*,'the 4 monment of the data is ',kmonment(A,n,4,ave_1)
 

contains

real function ave(A,n)
  integer::n
  real::A(n),sum=0
  do i=1,n
    sum=sum+A(i)
  end do
  ave=sum/n  
end function

real function SD(A,ave,n)
  integer::n
  real::A(n),sum=0
  do i=1,n
    sum=sum+(A(i)-ave)**2
  end do
  
  SD=sqrt(sum/(n-1))
  
end function   

real function kmonment(A,n,k,ave_1)
  integer::n,k
  real::A(n),sum=0
  do i=1,n
    sum=sum+(A(i)-ave_1)**k
  end do
  kmonment=sum/n
end function
end 



