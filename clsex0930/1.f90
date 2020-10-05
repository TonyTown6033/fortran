program differentinput
!real i,x,j,y
! read(*,100) i,x,j,y
!i=78
!j=158
!x=85.5
!y=542.953
integer::num=0
print*,'please input which type input you wanna try/'
print*,'num form 0 to 7'
read*,num


if(num==0) then
print*,'how to input format(i4,f7.2,i5,f8.2)' 
read(*,100)  i,x,j,y
print 100,i,x,j,y
endif
if(num==1) then
print*,'how to input format(i4,2x,f7.2,2x,i5,2x,f8.2)'
read(*,101)  i,x,j,y
print 101,i,x,j,y
endif 
if(num==2) then
print*,'how to input format(1x,2(i4,2x,f8.2))'
read(*,102)  i,x,j,y
print 102,i,x,j,y
endif
if(num==3) then
print*,'how to input format(i4,f7.2/i5,f8.2)'
read(*,103)  i,x,j,y
print 103,i,x,j,y
endif
if(num==4) then
print*,'how to input format(i4/f7.2/i5/f8.2)'
read(*,104)  i,x,j,y
print 104,i,x,j,y
endif
if(num==5) then
print*,'how to input format(//i4,f7.2//i5,f8.2//)'
read(*,105)  i,x,j,y
print 105,i,x,j,y
endif
if(num==6) then
print*,'how to input format(i4,f7.2)'
read(*,106)  i,x,j,y
print 106,i,x,j,y
endif
if(num==7) then
print*,'how to input format(i4,f7.2,i5,f8.2,i6,f9.2)'
read(*,107)  i,x,j,y
print 107,i,x,j,y
endif


100 format(i4,f7.2,i5,f8.2)
101 format(i4,2x,f7.2,2x,i5,2x,f8.2)
102 format(1x,2(i4,2x,f8.2))
103 format(i4,f7.2/i5,f8.2)
104 format(i4/f7.2/i5/f8.2)
105 format(//i4,f7.2//i5,f8.2//)
106 format(i4,f7.2)
107 format(i4,f7.2,i5,f8.2,i6,f9.2)



end