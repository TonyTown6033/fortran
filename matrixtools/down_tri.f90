subroutine down_tri(A,B,n)
  !����������������������ǻ���A���������B��������� 
  !A(n,n)
  implicit none
  integer:: n,i,j
  real,dimension(n,n)::A,B
  B=A

  do i=1,n-1
    do j=1,i

      B(n-i,:)=B(n-i,:)-B(n-i,n-j+1)/B(n-j+1,n-j+1)*B(n-j+1,:)
    end do
  end do
  
end subroutine down_tri  
  