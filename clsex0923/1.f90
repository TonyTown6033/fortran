program cal
real i,j,k,a,b
a=1.5;b=2.5;i=2.0;j=3.0;k=4;r=2.5;s=2.0;t=1.5
c=(2.45,3.1)
print*,'i/j-j/i+j-i = ',i/j-j/i+j-i  ! 0  => -0.16666667
print*,'k/j**i = ',k/j**i            ! 0  => 0.44444448
print*,'2*c+3*(r+s) = ',2*c+3*(r+s)  ! 18.3999996+6.2i
print*,'k**(i/j)*t/i*j*k = ',k**(i/j)*t/i*j*k  !9.0000 => 22.6785793
print*,'2*i/j*k = ',2*i/j*k          !5.33333349=>5.3333
print*,'k/j/i = ',k/j/i              !0.6666687+>0.6667
print*,'i*j+k-r*s = ',i*j+k-r*s      !5.0000=>5
print*,'a**2+b**2 = ',a**2+b**2      !8.50000=>8.5
print*,c
end
