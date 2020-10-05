program main
  print*,"please type the three side of the triangle "
  !real a,b,c
  read*,a,b,c
  
  p=(a+b+c)/2
  S=sqrt(p*(p-a)*(p-b)*(p-c))
  
  print*,"the area of the triangle is ",S
  
  end