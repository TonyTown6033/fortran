program main

    implicit none
    integer,parameter::n=5
    real::a(2:n),b(n),c(1:n-1)
    real::d(n),l(2:n),u(n),x(n),y(n)
    integer::i

    a=(/2,3,4,1/)
    b=(/1,3,4,5,2/)
    c=(/2,4,5,1/)
    d=(/3,9,12,10,3/)

    u(1)=b(1)
    do i=2,n
      l(i)=a(i)/u(i-1)
      u(i)=b(i)-c(i-1)*l(i)
    end do

    y(1)=d(1)
    do i=2,n
      y(i)=d(i)-l(i)*y(i-1)
    end do

    x(n)=y(n)/u(n)
    do i=n-1,1,-1
      x(i)=(y(i)-c(i)*x(i+1))/u(i)

    end do
    print*,x

end
