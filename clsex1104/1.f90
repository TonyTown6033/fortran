integer A(5),B(5)
A=(/2,2,3,3,5/)
print*,'A:',A
do i=1,5
  m=A(i)
  do j=i+1,5
    if (A(j)==m.and.A(j)/=0) then
      A(j)=0
    end if 
  end do
end do

where(A/=0) 
B=A
endwhere
write(*,"('new A is '$)")
do i=1,5
  if(B(i)/=0) then
  write(*,"(x,i4,x$)"),B(i)
  end if
end do
print*
print*,'0 means there is no number here'
end
