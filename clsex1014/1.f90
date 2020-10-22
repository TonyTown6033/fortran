program judint
integer n
print*,'please input a integer'
read*,n
select case(n)
  case(0:5)
  print*,'the num is less than 5,please try bigger one'
  
  case default
  
  if (mod(n,3)==0.or.mod(n,5)==0) then 
    print*,'this num could mod 3 and 5'
  else
    print*,'this num could not  mod 3 or 5'
  end if
end select
end 
