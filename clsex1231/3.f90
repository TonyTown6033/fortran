program main

  use nn

  integer i,j
  type(num1) n(20),temp
  call input1(n)

  do i=1,20
    do j=1,20-i
      if (n(j)%value>n(j+1)%value) then
        temp=n(j)
        n(j)=n(j+1)
        n(j+1)=temp
      end if
    end do
  end do

  do i=1,20
    call put(n(i))
  end do


end
