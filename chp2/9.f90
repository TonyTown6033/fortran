program b9
  max=0
  truth=0
  do i=1,8
    print*,'please input the num'
    read*,num
    print*,'input sucessfully'

    if (max==num) then
      truth=1
    endif
    if(max<num) then
      max=num
      truth=0
    endif

  end do

  print*,'the max of these num is ',max
  if (truth==1) then
    print*,'and the num is not lonely'
  else
    print*,'the num is lonely'
  endif

end
