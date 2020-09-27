program polysolve

real a1,b1,a2,b2,c1,c2
real x,y

! 3x+y=6         
! 5x+4y=17       
! x=1,y=3 


a1=3;b1=1;c1=6;a2=5;b2=4;c2=17


! the poly is as follows
print*,'the funcition is as follows '
print*,a1,'x','+',b1,'y','=',c1
print*,a2,'x','+',b2,'y','=',c2
!pause
!solve procedure

x=(b2*c1-b1*c2)/(a1*b2-a2*b1)
y=(a1*c2-a2*c1)/(a1*b2-a2*b1)

print*,'the solution is as follows'
print*,'x=',x,'y=',y

! check

print*,'the check program starting'
print*,'the error of first equation is ',a1*x+b1*y-c1
print*,'the error of first equation is ',a2*x+b2*y-c2
end

