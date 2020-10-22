program mail
real:: cost=0,rate=0
print*,'please input the the number of the cost'
read*,cost
100 format(2x,'the cost after discount is ',f10.2)
101 format(2x,'the rate you enjoy is ',f5.2,'%')
select case(int(cost))
  case (0:100-1)
    rate=1
  case (100:200-1)
    rate=0.97
  case (200:500-1)
    rate=0.95
  case (500:1000-1)
    rate=0.9
  case (1000:)
    rate=0.8
  case default
    print*,'input error'
end select
print 101,rate*100
print 100,cost*rate
end