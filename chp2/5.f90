! sum of 1-20 's factorial
! the num was so large 
program b5

  sum=0
  j=1
  do i=1,20
    j=i*j
    sum=sum+j
  !  print*,j
  end do
  print*,sum
end
