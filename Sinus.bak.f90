program Sinus

implicit none

integer :: i


real function func ( h )

 real, intent(in) :: h

 func = (sin(1.0+h)-sin(1.0-h))/(2.0*h)

end function func


real function fehl ( k )
 
 real, intent(in) :: k

 fehl = abs(func(k)-cos(1.0))

end function fehl

real, dimension(21) :: s 

 s(1)=1.0
 s(2)=2**(-1.0)
 s(3)=2**(-2.0)
 s(4)=2**(-3.0)
 s(5)=2**(-4.0)
 s(6)=2**(-5.0)
 s(7)=2**(-6.0)
 s(8)=2**(-7.0)
 s(9)=2**(-8.0)
 s(10)=2**(-9.0)
 s(11)=2**(-10.0)
 s(12)=2**(-11.0)
 s(13)=2**(-12.0)
 s(14)=2**(-13.0)
 

real, dimension(21) :: f

 do i=1, 21

  f(i)= fehl(s(i))

 end do
           
write(*,100) s, f 

100 format('Schrittweite',5x,'Fehler',/, &
           '--------------------------',/, &
           es15.8,5x,es15.8)          
           
end program Sinus           