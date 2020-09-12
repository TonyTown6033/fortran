! judge one num could mod 3 and 5
program b4
  print*,"please input the num"
  read*,num
  truth=0
  if (mod(num,3)==0) then
    if (mod(num,5)==0) then
      truth=1
    endif
  endif

  if (truth==1) then
    print*,"the num you input could mod 3 and 5"
  else
    print*,"the num you input could not mod 3 and 5"
  endif

end
