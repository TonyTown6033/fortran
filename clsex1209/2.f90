program main
	! Inizatialize the data
	type num_record
		integer times
		real number
	end type num_record
	
	type(num_record) a(20),temp

	! input the data
	print*,'pls input 20 nums '
	
	do i=1,20
		a(i).times=i
		read*,a(i).number
	end do

	print*,'input complete'

	! sort data
	do i=1,20-1
		do j=1,20-1
			if (a(j).number>=a(j+1).number) then
				temp=a(j)
				a(j) =a(j+1)
				a(j+1)=temp
			end if 
		end do 
	end do

	! print data
	do i=1,20
		print*,'the order before is ',a(i).times,'the number is ',a(i).number
	end do


end





