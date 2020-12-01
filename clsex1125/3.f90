program main
  parameter(max=1000)
  character*100::Letter(max)
  integer::n=0
  external input,sort,output
  
  call input(Letter,n)
  call output(Letter,n)
  print*,'after sort program the list is '
  call sort(Letter,n)
  call output(Letter,n)

end

subroutine input(A,n)
  parameter(max=1000)
  character*100::A(max)
  integer::i=1,n
  
  print*,'pls input the number of the list'
  read*,n
  print*,'now input the string'
  do i=1,n
    read*,A(i)
  end do 
end subroutine

subroutine sort(A,n)  ! LGE(a1,a2) a1 >= a2 ?
                      ! LLE(a1,a2) a1<= a2 ??
  character*100::A(n),temp
  integer::n
  do i=1,n-1

    do j=1,n-i
      if (lge(A(j),A(j+1))) then
        temp=A(j)
        A(j)=A(j+1)
        A(j+1)=temp
    
      end if 
    end do
  end do    

end subroutine    

subroutine output(A,n)
  character*100::A(n)
  integer::n,i=1
  
  do i=1,n
    print 100,A(i)
  end do
  
100 format(2x,a10)
end subroutine