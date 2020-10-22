program pfnumnum

integer::sum,factor(10000),pfnum(10000),m=1
integer a
do a=2,10000
!a=28
j=1
!print*,'inter the loop door1'
do i=1,int(a/2+1)           !find factor of a 
  
  if (mod(a,i)==0) then
    factor(j)=i
    j=j+1
  endif
enddo
!print*,'inter the loop door2'
sum=0                          ! sum of factor 
do k=1,j-1
  sum=sum+factor(k)
enddo

!write(*,*) (factor(i),i=1,j-1)
if (sum==a) then                ! judge procedure
  pfnum(m)=a
  m=m+1
!  print*,'here is something wrong'
endif
 ! print*,'a is ',a
enddo

write(*,100) (pfnum(i),i=1,m-1)
100 format(x,i6)
end