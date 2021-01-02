program main
  implicit none
  character*19::file1,file2,file3
  real::num1,num2
  
  print*,'pls input the file1 name'
  read*,file1
  print*,'pls input the file2 name'
  read*,file2
  print*,'pls input the file after mixing'
  read*,file3
  
  
  open(101,file=file1,status='old',err=99)
  open(102,file=file2,status='old',err=88)
  open(103,file=file3)
  read(101,*,end=30) num1
  read(102,*,end=20) num2
  
  do 
    if (num1>= num2) then
      write(103,*) num1
      read(101,*,end=30) num1
    else
      write(103,*) num2
      read(102,*,end=20) num2
    end if
  end do
  
30  do 
      write(103,*) num2
      read(102,*,end=40) num2
    end do
20  do 
      write(103,*) num1
      read(101,*,end=40) num1
    end do
40 close(101);close(102);close(103);
  print*,'file mix end'
  stop
99 print*,file1,' open err 99'
  stop
88 print*,file2,' open err 88'
end

  