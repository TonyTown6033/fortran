program main
  use Odetools
  use Matrixtools
  implicit none

  real,external::f
  integer,parameter::n=1000
  integer::i
  real,dimension(n)::x,y
  real,dimension(n,2)::data

  real::x0=0,y0=1

  x=(/(0.1*i,i=1,n)/)

  call rungle_4(x,y,x0,y0,n,f)

  do i=1,n
    data(i,1)=x(i);data(i,2)=y(i)
  end do

  call save(data,n,2,'data.txt')

end program main


real function f(x,y)
  implicit none
  real::x,y

  f=5*sin(x)-3*x**3
end function f
