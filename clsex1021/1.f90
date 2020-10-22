 program trianglevalue
 parameter(pi=3.1415926)
 do i=0,180,10
 !i=45
  print*,'x is ',i
  print*,'sin x is ',sin(i/180.0*pi)
  print*,'cos x is ',cos(i/180.0*pi)
  print*,'tan x is ',tan(i/180.0*pi)
 enddo
 end   