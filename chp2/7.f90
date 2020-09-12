program b7

    integer num(500)
    j=0

    do i=2000,2500
      truth=0
      if (mod(i,4)==0) then
        if (mod(i,100)/=0) then
          truth=1
        endif
      endif
      if(truth==1) then
        j=j+1
        num(j)=i
      endif
    end do

    do k=1,j
      print*,num(k)
    end do

  end
