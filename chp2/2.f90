program stupoints
character(7) str
print*,'please input your score'
read*,poi
if (poi>=90) then
	str='perfect'
endif
if (poi>=80 .and. poi<90) then
	str='nice'
endif
if (poi>=70 .and. poi<80) then
	str='good'
endif
if (poi>=60 .and. poi<70) then
	str='ok'
endif
if (poi<60) then
	str='wdnmd'
endif
print*, 'your point is ',str
end