program findan
integer::sum=0,i=1
do while(sum<=10000)
  sum=sum+i**i
  i=i+1
enddo

print*,i-1
end