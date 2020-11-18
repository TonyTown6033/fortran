! Data intalize
parameter(Max=40,n=5)
real data(Max,n),avescore(n),number(Max)
avescore(:)=0
!! Data load
do i=1,Max
  write(*,"(x,'pls enter ',i3,' student number')"),i
  read*,number(i)
  write(*,"(x,'pls enter ',i3,' student score')"),i
  do j=1,n
    read*,data(i,j)
    avescore(i)=avescore(i)+data(i,j)  
  end do
  avescore(i)=avescore(i)/5
end do
print*,'each students avescores are as list'
print*,avescore
end

