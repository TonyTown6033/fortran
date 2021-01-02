program main  
  implicit none
  integer,parameter::n=5
  
  open(101,file='data1.txt',form='formatted',access='direct',recl=25)
  write(101,'(i8)',rec=n)
  close(101)
  
end program main
