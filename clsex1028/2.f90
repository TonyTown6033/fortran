Program Goldbach

!! Intialize
integer:: a(100),n=1,m=1,b(1000),c(1000),d(1000)
logical::flag=.true.
!! get the prime number from 2-100

print*,' Excusing the prime finder '

do i=2,100
  !print*,'inter the loop'
  flag=.true.
  do j=2,i-1
    if(mod(i,j)==0) then 
   !   print*,'here'
      flag=.false.
      exit
    end if
  end do 
  if (flag) then
    !print*,'here'
    a(n)=i
    n=n+1
    !print*,i
  end if
end do

print*,'prime finder complete'
!print*,a(2)
!! judge Goldbach Guess
do i=4,100,2
  do j=1,n-1
    do k=1,n-1
      if(a(j)+a(k)==i) then
     ! print*,'here'
       print*,a(j),'+',a(k),'=',i
      end if
    end do
  end do
end do


end
         