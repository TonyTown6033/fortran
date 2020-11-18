parameter(m=3,n=4)
integer:: A(m,n),max(2),min(2),B(m,n),temp=0
A=reshape((/-1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,12/),(/m,n/))
where (A<0)
  B=-A
elsewhere
  B=A
end where

do i=1,m
  do j=1,n
    if (temp<A(i,j)) then
      max(1)=i
      max(2)=j
      temp=A(i,j)
    end if 
  end do
end do                                                        

do i=1,m
  do j=1,n
    if (temp>A(i,j)) then
      min(1)=i
      min(2)=j
      temp=A(i,j)
    end if 
  end do
end do
         
print*,'the max data location is '
write(*,"(i5,x,i5)"),max(1),max(2)  
print*,'the min data location is '
write(*,"(i5,x,i5)"),min(1),min(2) 

end
    