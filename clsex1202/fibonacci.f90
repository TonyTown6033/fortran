program main
  integer:: n,m
  print*,'pls input the rank of fibonacci'
  read*,n
  !m=fibonacci(n)
  print*,ifibonacci(n)
end

recursive  function ifibonacci(n) result(fact)
  integer::n,fact
  
  if (n==1 ) then
    fact=1
  elseif (n==0) then
    fact=0  
  elseif(n>=2) then
    fact=ifibonacci(n-1)+ifibonacci(n-2)
  end if

end function