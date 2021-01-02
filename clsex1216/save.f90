subroutine save(A,m,n,filename)
  implicit none 
  integer::m,n,i,j
  real,dimension(m,n)::A
  character(100)::filename
  
  open(1,file=filename)
  do i=1,m
    do j=1,n
      write(1,100) A(i,j)
    end do
    write(1,*)
  end do
  
100 format(x,f14.5$)
  
  close(1)
end subroutine save
  