program main
  external GCD  
  integer::a=198,b=72,c=1260,d=0,e=0
  call GCD(b,a,d)
  call GCD(d,c,e)
  print*,'the max couble is ' ,e

  


end

recursive subroutine GCD(a,b,c)
  integer a,b,c,temp
  if (a < b) then
    temp=a              !SWAP a,b
    a=b
    b=temp
    call GCD(a,b,c)
  end if 
  temp=mod(a,b)
  if (temp /= 0) then
    a=b
    b=temp
    call GCD(a,b,c)
  else 
    c=b
  end if 
end subroutine GCD