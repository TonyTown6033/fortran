subroutine transport(A,B,m,n)
  !ת�þ���A(m,n) �������B(n,m)
  implicit none
  integer:: m, n , i, j
  real,dimension(m,n)::A
  real,dimension(n,m)::B
  
  do i=1,m
    do j=1,n
      B(i,j)=A(j,i)
    end do
  end do
  return
end subroutine transport
  