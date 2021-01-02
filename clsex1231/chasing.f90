module chasing
contains
  subroutine LU(a,b,c,n,l,u)
    integer::n
    real::a(n-1),b(n),c(n-1)
    real::l(n-1),u(n)

    u(1)=b(1)
    do i=2,n
      l(i)=a(i)/u(i)-1
      u(i)=b(i)-c(i-1)*l(i)
    end do

  end subroutine LU

  subroutine solve(l,u,d,n,x)
      integer::n
      real::d(n),y(n),l(n-1),u(n),x(n)

      y(1)=d(1)
      do i=2,n
        y(i)=d(i)-l(i)*y(i-1)
      end do

      x(n)=y(n)/u(n)
      do i=n-1,1,-1
        x(i)=(y(i)-c(i)*x(i+1))*u(i)
      end do

  end subroutine solve
end module chasing
