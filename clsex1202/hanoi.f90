program main
  character::a='a',b='b',c='c'
  integer::n
  print*,'pls input the nun of the disks'
  read*,n
  call hanoi(a,b,c,n)
end 


recursive subroutine hanoi(a,b,c,n)
  character::a,b,c
  integer::n
  if (n==1) then
    print*,a,'==>',c
    return
  end if

  call hanoi(a,c,b,n-1)
  call hanoi(a,b,c,1)
  call hanoi(b,a,c,n-1)

  end subroutine