program main
  implicit none
  external load,output
  integer,parameter::m=1000
  real,dimension(m,2)::A

  call load(A,m,2,'data.txt')

  call output(A,m,2)

end program
