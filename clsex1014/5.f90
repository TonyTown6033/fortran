program daffodil
integer:: num=0
logical:: flag=.false.
print*,'please input a num from 100-999'
read*,num
a=int(num/100)
b=int((num-a*100)/10)
c=num-a*100-b*10
if(num==(c*c*c+b*b*b+a*a*a)) flag=.true. 
if(flag) then
print*,'this num is a daffodil num'
else
print*,'this num is not a daffodil num'
end if 
end