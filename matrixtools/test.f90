program main

  use Matrixtools
  implicit none
  integer,parameter::m=2,n=2
  real,dimension(m,n)::A,B
  integer::i,j
  read*,((A(i,j),j=1,n),i=1,m)
  call output(A,m,n)
  call inv(A,B,n)
  call output(B,m,n)

  end
