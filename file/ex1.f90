program main
  implicit none
  external load,output
  integer,parameter::m=5,n=2
  integer::i
  real,dimension(m,n)::A
  
  call load(A,m,n,'yes.txt')
  
  call output(A,m,n)
  
end
  