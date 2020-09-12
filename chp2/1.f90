!get the bigget and smallest number among three number
program a1
	real a,b,c,min,max
	print* ,'please input the three number use block to devide'
	read*,a,b,c
	if (a>b) then
		max=a;min=b
	else
		max=b;min=a
	endif
	if (max<c) then
		max=c
	endif
	if (min>c) then
		min=c
	end if 
	print*,'the max num is ',max
	print*,'the min num is ',min
	end

	
