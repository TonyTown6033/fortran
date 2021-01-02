



program main
    implicit none

    integer,parameter::max=1000
    character:: num(max),name(max),sex(max),lesson(max)
    integer:: point(max)
    integer::i,j=1,n

    open(10,file='record.txt')
    do
      read(10,"(a7)",end=20) num(i)
      read(10,"(a8)") name(i)
      read(10,"(a2)") sex(i)
      read(10,"(a10)") lesson(i)
      read(10,"(i3)") point(i)
    end do

20    close(10)
    n=point(1)
    open(100,file='out.txt',form='unformatted',access='direct',recl=20)
    do j=1,n
      write(100,rec=j) num(i)
      write(100,rec=j) name(i)
      write(100,rec=j) sex(i)
      write(100,rec=j) lesson(i)
      write(100,rec=j) point(i)
    end do
    close(100)
end
