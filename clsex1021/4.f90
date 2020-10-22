  program select
  integer::i=1,m=0,n=0
  real a(20),b(20),c(20)
  b(1:)=0
  c(1:)=0
  print*,'please input 20 nums '
  read*,(a(i),i=1,20)
 ! a=(/-5,-4,-3,-2,-4,0,1,2,3,5,0,0,0,0,5,9,7,5,6,3/)
  !here is 5 negitive ,5 zero ,10 positive
  where(a>0) b=a
  where(a<0) c=a
  where(b>0) b=1
  where(c<0) c=-1
  do i=1,20
    if (b(i)==1) m=m+1
  enddo
  do i=1,20
    if (c(i)==-1) n=n+1
  enddo
  
  print 100,m,n,20-m-n
  100 format('the num of positive is ',i2,/,'the num of  positive is ',i4,/,'the zeros num is ',i4)
  
 ! write(*,101) (a(i),i=1,20)
 ! write(*,101) (b(i),i=1,20)
 ! write(*,101) (c(i),i=1,20)
 ! 101 format(/2x,f5.1,$/)
  end