program main

  external lagrangian  
  parameter(pi=3.1415926,max=100)
  integer::n
  real::in,out,x(max),y(max)
  
  print*,'pls input the num of the point'
  
  read*,n
  
  ! zone is (0,pi)
  do i=1,n
    x(i)=i*pi/n

    y(i)=sin(i*pi/n)
    print*,y(i)
  end do

  print*,'pls input the x '
  read*,in
  call lagrangian(x(1:n),y(1:n),n,in,out)
  print*,'the approximate y is '
  print*,out,sin(in)
end


subroutine lagrangian(x,y,n,in,out)
  external basic
  
  integer::n
  real::x(n),y(n),in,out,L(n),L1(n),L2(n)
  
  do i=1,n
    L1(i)=1
    L2(i)=1
  end do
  do i=1,n
    do j=1,n
      if (i/=j) then
        L1(i)=(in-x(j))*L1(i)
        L2(i)=(x(i)-x(j))*L2(i)
      end if
    end do
    L(i)=L1(i)/L2(i)
  end do
  
  do i=1,n
    out=out+L(i)*y(i)
  end do
  
end subroutine lagrangian




