program acc
real s1,s2,s3,t1,t2,t3,v,a

print*,'please input the accleration of the train'
read*,a

t1=24/60.0;t2=12/60.0;t3=3/60.0;

v=a*t1

s1=(0+v)*t1/2     !because the whole procedure is uniform
s2=v*t2           !so we could use mean value to calculate it
s3=(0+v)*t3/2

print*,'the max velocity is ',v
print*,'the distance of two station is ',s1+s2+s3
end