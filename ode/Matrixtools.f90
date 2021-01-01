module Matrixtools
  implicit none
contains
  real function det(A,n)

    integer:: n,i,j
    real,dimension(n,n)::A,B
    real::sum=1.0
    !计算方阵A的行列式
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

  subroutine down_tri(A,B,n)
    !将矩阵A下三角化，储存在矩阵B中
    !A(n,n)

    integer:: n,i,j
    real,dimension(n,n)::A,B
    B=A

    do i=1,n-1
      do j=1,i

        B(n-i,:)=B(n-i,:)-B(n-i,n-j+1)/B(n-j+1,n-j+1)*B(n-j+1,:)
      end do
    end do

  end subroutine down_tri

  subroutine load(A,m,n,filename)

    integer:: m,n,i,j
    real,dimension(m,n)::A
    character(100)::filename

    open(101,file=filename)

    read(101,*) ((A(i,j),j=1,n),i=1,m)

    print*,'*************************'
    print*,'load completed'

    close(101)
  end subroutine load

  subroutine mult(A,B,C,m,n,t)
    ! A(m,n) *B(n,t)= C(m,t)

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

  subroutine output(A,m,n)

    integer:: m,n,i,j
    real,dimension(m,n)::A

    do i=1,m
      do j=1,n
        write(*, 102) A(i,j)
      end do
      print*
    end do


    102 format(2x,f14.5$)
    return
  end subroutine output

  subroutine save(A,m,n,filename)

    integer::m,n,i,j
    real,dimension(m,n)::A
    character(100)::filename

    open(1,file=filename)
    do i=1,m
      do j=1,n
        write(1,101) A(i,j)
      end do
      write(1,*)
    end do

  101 format(x,f14.5$)

    close(1)
  end subroutine save

  subroutine transport(A,B,m,n)
    !将矩阵A转置，储存在矩阵B中

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

  subroutine inv(A,C,n)
    !求A(n,n)的逆矩阵，B是输出的逆矩阵
    !该程序通过初等变换求逆矩阵
    !depends on :: det transport down_tri
    implicit none
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
  end  subroutine inv
end module
