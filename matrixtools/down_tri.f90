subroutine down_tri(A,B,n)
  !这个程序用来将矩阵下三角化，A是输入矩阵，B是输出矩阵 
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
  