program main
  implicit none
  external sort,save
  integer,parameter::n=100
  real,dimension(n)::A,B
  real::p=3.1415
  integer::i
  
  do i=1,n
    call random_number(p)
    A(i)=p*10
    p=p+2
  end do
  print*,A
  
  open(102,file='rand.txt',form='unformatted',access='direct',recl=25)
  do i=1,n
    write(102,rec=i) A(i)
  end do
  close(102)
  
  open(103,file='rand.txt',form='unformatted',access='direct',recl=25)
  do i=1,n
  read(103,rec=i) B(i)
  end do
  close(103)
  call sort(B,n)
  call save(B,1,n,'d1.txt')
  open(104,file='sortnum.txt')
  write(104,100) (B(i),i=1,n)  
  close(104)
100 format(x,f10.5)
end

subroutine sort(A,n)
  implicit none
  integer::n
  real,dimension(n)::A
  real::temp
  integer::i,j
  
  do i=1,n-1
    do j=i,n-1
      if (A(j)>=A(j+1)) then 
        temp=A(j);A(j)=A(j+1);A(j+1)=temp;
      end if
     end do
  end do
 
end subroutine sort    
  
  
  
