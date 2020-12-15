subroutine mult(A,B,C,m,n,t)
  ! A(m,n) *B(n,t)= C(m,t)
  implicit none
  integer::m,n,t,i,j,k
  real,dimension(:,:)::A(m,n),B(n,t),C(m,t)
  real::sum=0.0

  do i=1,m
    do j=1,t
      sum=0

      do k=1,n
        sum=sum+A(i,k)*B(k,j)
      end do

      C(i,j)=sum

    end do
  end do

end subroutine mult
