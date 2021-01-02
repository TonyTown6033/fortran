program main
  implicit none
  external save
  integer,parameter::n=100
  integer,dimension(n)::A
  integer::i,m,p
  logical::flag=.false.
  A=(/(i**3,i=1,n)/)
  open(1,file='data1.txt',form='formatted',access='direct',recl=25)
  
  do i=1,n
  write(1,100,rec=i) A(i)
  end do

100 format(i7)  
  print*,'****************'
  print*,'data input completed'
  
  print*,'now input a num from 1-100'
  print*,' this program will find its cube in the file'
  read*,m
  
  
  do i=1,n  
    read(1,100,rec=i) p
   
    if(m**3==p) then
      print*,'here is num in the file',p
      flag=.true.
    end if 
  end do
! 20 if(.not.flag) print*,'there is no same num in the file'
  close(1)
end
   
