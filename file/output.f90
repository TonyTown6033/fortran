subroutine output(A,m,n)
  implicit none
  integer:: m,n,i,j
  real,dimension(m,n)::A
  
  do i=1,m
    do j=1,n
      write(*, 100),A(i,j)
    end do
    print*
  end do
      
  
  100 format(2x,f14.5$)
  return
end subroutine output


  