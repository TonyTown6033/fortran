program b9
  sum1=0
  sum2=0
  do i=1,99,2
    sum1=sum1+1/i
  end do

  do j=2,100,2
    sum2=sim2+1/j
  end do

  print*,sum1-sum2
end
