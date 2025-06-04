program Sinus

implicit none

real :: u

integer :: i

real, parameter :: x = 100.0 

real, parameter :: hc = 0.004 

real, dimension(21) :: s = (/ (2.0**(-i+1.0), i = 1, 21) /) 
 
real, dimension(21) :: f 
           
 do i = 1, 21
 
  f(i)= fehl(s(i))
 
 end do 

write(*,100) 

do i=1, 21

 write(*,200) s(i), f(i)
 
end do

u = abs((sin(x+hc)-sin(x-hc))/(2.0*hc)-cos(x))

write(*,*) 'fuer hc = 0.004:' 
write(*,200) hc, u 
 


100 format(t3,'Schrittweite',10x,'Fehler',/, &
           '------------------------------------')          

200 format(es15.8,5x,es15.8)


contains

 real function func(h)

  real, intent(inout) :: h

  func = (sin(x+h)-sin(x-h))/(2.0*h)

 end function func


 real function fehl(k)
 
  real, intent(inout) :: k

  fehl = abs(func(k)-cos(x))

 end function fehl


           
          
           
end program Sinus           