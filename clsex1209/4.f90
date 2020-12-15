program test_pointer
  implicit none 
  real,dimension(100,100),target :: array1, array2
  real,dimension(:,:), pointer :: p1, p2 , temp_p
  real,dimension(100,100) :: a1,a2,temp
  integer:: i
  real :: begin,end
  call random_number(a1)
  call random_number(a2)
  array1=a1
  array2=a2
  p1=>array1
  p2=>array2
  call cpu_time(begin)
  do i=1,100000
    temp=a1
    a1=a2
    a2=temp
  end do
  call cpu_time(end)
  write(*,*)  'Time of variable exchange:',end-begin
  call cpu_time(begin)
  do i=1,100000
    temp_p=>p1
    p1=>p2
    p2=>temp_p
  end do
  call cpu_time(end)
  write(*,*) 'Time of pointer exchange:', end-begin
  end
  