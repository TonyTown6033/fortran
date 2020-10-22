program findanum
integer num(500)
integer::j=1
do i=1,500
  if (mod(i,3)==2 .and. mod(i,5)==3 .and. mod(i,7)==2)then
    num(j)=i
    j=j+1
  endif
enddo
write (*,100) (num(i),i=1,j-1)
100 format(x,i5)
print*
end