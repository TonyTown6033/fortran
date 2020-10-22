program aeio
character letter
print*,'please input a letter'
read*,letter
select case(iachar(letter))  !iachar(c) get the ASCII of the c
  case(65,69,73,79,85)       ! ASCII: 65=A 66=b
  print*,'this letter is a big vowel'
  case(65+32,69+32,73+32,79+32,85+32)  !ASCII: 65+32=a
  print*,'this letter is a small vowel'
  case default
  print*,'this letter is not a vowel'
end select
end