! main program
program primenum
  integer k
  common k
  n=100
  do j=2,n
    call finda(j)
    if(finda) then  !find(j)==1
      call savea(j)
    end if
  end do
  call printa(savea)
end
! to find prime num function finda(n) if finda is 1 means the num input is a
!                                         prime num
function finda(n)
  integer n,i
  do i=2,n-1
    if (mod(n,i)==0) then
      exit
    endif
  end do
  if (i>=n-1) then
    truth=1
  else
    truth=0
  endif
  finda=truth
end function finda
! to save the num into function savea
function savea(n)
!  integer n            !try use common
  integer num(100)
  integer k=1
  num(k)=n
  k=k+1
  savea=num
end function savea
! print the primenum
function printa(num)
  integer num(100)
  do i=1,k-1
    print*,num(i)
  end do
end
