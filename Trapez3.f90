program Trapez3

implicit none 

real :: u, c

integer :: i, n, h

real, parameter :: pi= 3.141592653559231

write(*,*) 'Berechnung des Integrals mit n='
read(*,*) n 

h=n-1
u=0

do i=2, h
  
   
  u=u+sinus(i, n)
  
 
end do
  
c= (2.*pi/(n-1.))*(u+(12./(sin(0.)*12.+13.)+12./(sin(2.*pi)*12.+13.))/2.)

write(*,*) 'Das Ergebnis lautet:'
write(*,100) c

100 format(f19.15)

contains 

 real function a(i, n)

 integer, intent(in) :: i
 integer, intent(in) :: n

 a=1.+(i-1.)*(2.*pi)/(n-1.)
 
 return

 end function a

 
 real function sinus(i, n)

 integer, intent(in) :: i
 integer, intent(in) :: n

 sinus=12./(sin(a(i,n))*12.+13.)

 return
 
 end function sinus

 
 
end program Trapez3