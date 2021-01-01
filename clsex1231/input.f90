module nn
    type num1
      integer order
      real value
    end type num1

    interface assignment(=)
           module   procedure equ
    end interface

contains
    subroutine equ(t2,t1)
            implicit none
            type(num1),intent(out):: t2
            type(num1),intent(in):: t1

            t2%order=t1%order
            t2%value=t1%value
    end subroutine equ

    subroutine put(t1)
            implicit none
            type(num1),intent(in):: t1
            print "(x,'num is ',f6.4,2x,'order is ',i3)", t1%value ,t1%order
    end subroutine put

    subroutine input1(n)
        real,dimension(20)::a
        integer,dimension(20)::b
        integer::i,j
        type(num1) n(20)
         data  (a(i),i=1,20)/0.8147,0.6557,0.4387,0.7513,0.3517,0.1622,0.1067,0.8530,0.7803,0.5470&
                            ,0.9058,0.0357,0.3816,0.2551,0.8308,0.7943,0.9619,0.6221,0.3897,0.2963/
         b=(/(i,i=1,20)/)

        do i=1,20
          n(i)%order=b(i)
          n(i)%value=a(i)
        end do

    end subroutine input1
end module nn
