program calculate
real x,y,o,i,A,B,C,x0,y0

x=1;y=2;o=3;i=4;A=5;B=6;C=7;x0=8;y0=9

fun1=x**(3/2)*log(x*x+y*y/(o*x))
fun2=0.5*(exp(x/o)+exp(-1*x/o))
fun3=1/o*o*(i/10)**2
fun4=abs(A*x0+B*y0+C)/sqrt(A*A+B*B)

print*,'the fun1 =',fun1
print*,'the fun2 =',fun2
print*,'the fun3 =',fun3
print*,'the fun4 =',fun4

end