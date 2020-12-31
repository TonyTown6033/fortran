        module sum_time
                type time
                       integer(1)::hour,minute,second
                end type time
                
                interface operator(+)
                       module   procedure sum
                end interface

               contains

                 function sum(t1,t2)
                         type(time),intent(in)::t1,t2
                         type(time) sum
                         integer minutes,seconds
                         seconds=t1%second+t2%second
                         minutes=t1%mintue+t2%mintue+seconds/60
                         sum%second=mod(seconds,60)
                         sum%mintue=mod(minutes,60)
                         sum%hour=t1%hour+t2%hour+minutes/60

                 end function sum

                 subroutine put(t)
                        type(time),intent(in):: t
                        write(*,"(1x,i3,'h',i3,'minute',i3,'second')") &
t%hour,t%minute,t%second
                 end subroutine put

        end module
       
