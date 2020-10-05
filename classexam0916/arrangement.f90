program main            !bubble sort
  real a,b,c,t
  print*,"please type three num to sort"
!  a=7;b=6;c=9
  read*,a,b,c
  t=a
  if(a>b) then
    a=b
    b=t
  endif
  t=b
  if (b>c) then
    b=c
    c=t
  endif
  t=a
  if(a>b) then
    a=b
    b=t
  endif
  print*,a,b,c
  end

    