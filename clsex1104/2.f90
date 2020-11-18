integer::A(5),num=0,B(5),j=1
A=(/2,2,3,3,5/)
print*,'A :',A
B(:)=0
print*,'please input the num you want to delete'
read*,num
do i=1,5
  if (A(i)/=num) then
    B(j)=A(i)
    j=j+1
  end if 
end do
print*,'new A is '
do i=1,5
  if (B(i)==0) then
    exit
  end if 
  write(*,"(' ',i4,' '$)"),B(i)
end do 
print*
end 