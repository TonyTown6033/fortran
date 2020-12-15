subroutine load(A,m,n,filename)
  implicit none 
  integer:: m,n,i,j
  real,dimension(m,n)::A
  character(100)::filename
  
  open(101,file=filename)
  
  read(101,*) ((A(i,j),j=1,n),i=1,m)
  
  print*,'*************************'
  print*,'load completed'
  
  close(101)
end subroutine load
  