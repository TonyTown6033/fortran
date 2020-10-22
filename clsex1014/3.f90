program triangle
real::a=0,b=0,c=0
logical:: flag=.false.
100 format(1x,'the rad of three angle are as list',/,2x     &
,'alpha is ',f7.2,3x,'beta is ',f7.2,3x,'zeta is ',f7.2,/)
print*,'please input the three side of the triangle'
read*,a,b,c
if (a+b>c.and.a+c>b.and.b+c>a) flag=.true.
if(flag) then
  print*,'those sides could compose a triangle'
  alpha=acos((a*a+b*b-c*c)/(2*a*b))
  beta=acos((b*b+c*c-a*a)/(2*b*c))
  zeta=acos((a*a+c*c-b*b)/(2*a*c))
end if
print 100,alpha,beta,zeta
end
