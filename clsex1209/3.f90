program main
  implicit none
  !external swap
  integer,target :: n1,n2,n3
  integer,pointer :: p1,p2,p3
  
  p1=>n1
  p2=>n2
  p3=>n3
  
  print*,'pls input three number'
  read*,n1,n2,n3
  
  if (n1>=n2) then
    call swap(p1,p2)
    if (n1 >= n3) then
      call swap(p2,p3)
    end if
  else if (n2>=n3) then
    call swap(p2,p3)
    if (n1>=n3) then
      call swap(p1,p2)
    end if 
  end if 
  
  print*,'the list before sort is :'
  print*,n1,n2,n3
  print*,'after sorting :'
  print*,p1,p2,p3
  
contains
  subroutine swap(p1,p2)
  integer,pointer::p1,p2,temp_p
  
  temp_p=>p1
  p1=>p2
  p2=>temp_p
  
  end subroutine
  
end 


