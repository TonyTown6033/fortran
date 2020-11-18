program array01
integer:: test(4),num(4),num1(4),num2(4),num3(4),num4(4)
integer:: flag=1,temp(4)
data test/2,5,8,3/
print*,'run test program ??  input 1 to ensure ,0 to cancle'
read*,flag

if (flag==1) then
  num=test
else 
  read*,(num(i),i=1,4)
end if 

temp=num

do i=2,4
  num1(i-1)=num(i)
end do
num1(4)=temp(1)

do i=2,4
  num2(i-1)=num1(i)
end do
num2(4)=temp(2)

do i=2,4
  num3(i-1)=num2(i)
end do
num3(4)=temp(3)

do i=2,4
  num4(i-1)=num3(i)
end do
num4(4)=temp(4)

print*,num
print*,num1
print*,num2
print*,num3
print*,num4
end