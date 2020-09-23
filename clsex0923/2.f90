program str
character*19 strl,str1,str2,str3,str4
strl='He is a teacher. '
str1=strl(1:2)
str2=strl(4:5)
str3=strl(7:7)
str4=strl(9:16)
!print*,str3//'s'
print*,'I'//' '//'am'//' '//'a '//str4
end