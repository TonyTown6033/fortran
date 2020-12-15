! �øĽ�Euler����ⳣ΢�ַ���
! Ŀǰ�ó���ֻ�ܽӳ�ֵ����,x(n)Ϊ�Ⱦ��ʱ������
! fΪ y'=f(x,y) �е�f , ���������ʽ������ĩβ
! x0,y0 Ϊ��ֵ����
subroutine Euler(x,y,x0,y0,n,f)
  implicit none 
  real,external::y_next,f
  integer::n,i
  real,dimension(n)::x,y
  real::h=0.0,x0,y0
  
  h=(x(n)-x(1))/(n-1)
  
  do i=1,n
    if (i==1) then 
      y(i)=y_next(x0,y0,h,f)
    else if (i>1.and. i<=n) then
      y(i)=y_next(x(i-1),y(i-1),h,f) 
    end if 
  end do  
  

end subroutine Euler

real function y_next(x,y,h,f)
  implicit none 
  real,external::f
  real:: x,y,h,yp,yc
  
  yp=y+h*f(x,y)
  yc=y+h*f(x+h,yp)
  y_next=0.5*(yp+yc)
end function y_next

!��������
!real function f(x,y)
!  implicit none
!  real::x,y
  
!  f=y-2*x/y
!end function f


  