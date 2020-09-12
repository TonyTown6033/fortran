program b8
  sum=0
  max=0
  num_f=0

  do i=1,30
    print*,'please input the num'
    read*,score
    print*,'load sucesss'

    sum=sum+score

    if(score>max) then
      max=score
    endif

    if(score<60) then
      num_f=num_f+1
    endif

  end do

  avescore=sum/30
  rate=num_f*0.0333333   !1/30=0.0333333

  print*,'the avescore is' ,avescore
  print*,"the highest score is ",max
  print*,'the failed person num and rate is ',num_f,rate

end
