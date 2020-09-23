program transform

real hour
print*,'please input the hour num'
read*,hour
minute=(hour-int(hour))*60
hour=int(hour)
print*,hour,':',minute
end