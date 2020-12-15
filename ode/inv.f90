subroutine inv(A,C,n)
  !求A(n,n)的逆矩阵，B是输出的逆矩阵
  !该程序通过初等变换求逆矩阵
  implicit none
  external transport,down_tri,output
  real,external:: det
  integer::n,i,j
  real,dimension(n,n)::A,B,C,temp
  real::m=0.0
  
  if (det(A,n)==0) then 
    print*,'this matrix has no inv matrix,  &
      cause its a singular matrix'
    return
  end if 
  
  B=A
  
  do i=1,n
      C(i,i)=1
  end do
  
  

  
  do i=1,n-1
    do j=1,i
      m=B(n-i,n-j+1)/B(n-j+1,n-j+1)
      B(n-i,:)=B(n-i,:)-m*B(n-j+1 ,:)
      C(n-i,:)=C(n-i,:)-m*C(n-j+1,:)
    end do
  end do
  
  
  
  call transport(C,temp,n,n)
  C=temp
  
  call transport(B,temp,n,n)
  B=temp
  
  
  
  do i=1,n-1
    do j=1,i
      m=B(n-i,n-j+1)/B(n-j+1,n-j+1)
      B(n-i,:)=B(n-i,:)-m*B(n-j+1,:)
      C(n-i,:)=C(n-i,:)-m*C(n-j+1,:)
    end do
  end do
  
  do i=1,n
    B(i,:)=B(i,:)/B(i,i)
    C(i,:)=C(i,:)/B(i,i)
  end do
  
  
 end  
  
  
  
  
  
  
  