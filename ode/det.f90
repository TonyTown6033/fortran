real function det(A,n)
  implicit none
  integer:: n,i,j
  real,dimension(n,n)::A,B
  real::sum=1.0
  !将矩阵下三角化后再求出其行列式的值
  B=A
  do i=1,n-1
    do j=1,i

      B(n-i,:)=B(n-i,:)-B(n-i,n-j+1)/B(n-j+1,n-j+1)*B(n-j+1,:)
    end do
  end do
  
  do i=1,n
    sum=sum*B(i,i)
  end do
  
  det=sum
end function det
  
  
  