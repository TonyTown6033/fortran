        module Time_op
                implicit none
                type time
                       integer(1)::hour,minute,second
                end type time
                
                interface operator(+)
                       module   procedure sum
                end interface
                        
                interface operator(-)
                       module   procedure min
                end interface

                interface assignment(=)
                       module   procedure giv
                end interface
               contains

                 function sum(t1,t2)
                         type(time),intent(in)::t1,t2
                         type(time) sum
                         integer minutes,seconds
                         seconds=t1%second+t2%second
                         minutes=t1%minute+t2%minute+seconds/60
                         sum%second=mod(seconds,60)
                         sum%minute=mod(minutes,60)
                         sum%hour=t1%hour+t2%hour+minutes/60

                 end function sum

                 subroutine put(t)
                        type(time),intent(in):: t
                        write(*,"(1x,i3,'h',i3,'minute',i3,'second')") &
                                                t%hour,t%minute,t%second
                 end subroutine put
                 
                 function min(t1,t2)
                         type(time),intent(in)::t1,t2
                         type(time) min
                         integer:: minutes,seconds,temp=0
                         seconds=t1%second-t2%second
                         minutes=t1%minute-t2%minute
                         

                         if (seconds<0) then
                                seconds=60+seconds
                                minutes=minutes-1
                         end if 
                         if (minutes<0) then
                                minutes=60+minutes
                                temp=-1
                         end if  

                         min%second=seconds
                         min%minute=minutes
                         min%hour=t1%hour+t2%hour+temp

                         end function min

                         subroutine giv(t1,t2) 
                                 real,intent(in):: t1
                                 type(time),intent(out):: t2
                                 integer seconds,minutes,hours
                                 hours=int(t1)
                                 minutes=int(t1-hours)
                                 t2%hour=hours
                                 t2%minute=minutes
                          end subroutine giv
        end module
      
     program main
        use sum_time
        type(time) t1,t2,t3
        t1=time(12,21,50)
        t2=time(5,47,29 )
        t3=t1+t2
        call put(t3)
     end  
