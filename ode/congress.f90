!回归分析
program main
  implicit none
  external load,transport,inv,mult,output
  integer,parameter:: m=1000
  integer::i
  real,dimension(m,2)::A
  real,dimension(m,1)::x0,x1,x2,y
  real,dimension(m,3)::X
  real,dimension(3,m)::temp1
  real,dimension(m,m)::temp2,temp3
  real,dimension(3,1)::theta
  ! Data Intilizing
  call load(A,m,2,'data.txt')
  do i=1,m
    x0(i,1)=1;x1(i,1)=A(i,1);x2=A(i,1)**2;y(i,1)=A(i,2)
  end do

  do i=1,m
    X(i,1)=x0(i,1);X(i,2)=x1(i,1);X(i,3)=x2(i,1)
  end do

  call transport(X,temp1,m,3)     !X'=temp1
  call mult(temp1,X,temp2,3,m,3)  !temp2=X'*X
  call inv(temp2,temp3,m)         !temp3=inv(X'*X)
  call mult(temp3,temp1,temp2,3,3,m) !temp2=inv(X'*X)*X'
  call mult(temp2,y,temp1,3,m,3)    !temp1=inv(X'*X)*X'*y

  do i=1,3
    theta(i,1)=temp1(i,1)
  end do

  call output(theta,3,1)
end program main
