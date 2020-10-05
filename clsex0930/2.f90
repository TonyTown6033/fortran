program multexcel
integer a(9),b(9)
integer num(9,9)

!value 1 to 9 for a and b 
do k=1,9
  a(k)=k
  b(k)=k
end do

!value the i*j to num(i,j)
do i=1,9
  do j=1,9
    num(i,j)=a(i)*b(j)
    !print*,num(i,j)
  end do
end do

i=1;j=1;k=1

! print the first line 1 2 3 4 5 6 7 8 9

write(*,99)   ! press block at first
do k=1,9
  write(*,100) a(k)
end do
print*
print*,'--------------------------------------'


! check num print
if (1==2) then
do i=1,9
  do j=1,9
    write(*,102),num(i,j)
  end do
end do
endif


do i=1,9
  write(*,101) b(i)
  do j=1,9
    write(*,102) num(i,j)
    if (i==j) then
      print*
      exit
    endif   
  end do

end do 

print*,'--------------------------------------'

99 format(2x,'  ',$)
100 format(i4,2x,$)
101 format(i4,2x,$)
102 format(i4,2x,$)
103 format(i4,2x)
end
