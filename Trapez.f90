program Trapez

implicit none 

real :: u, c

integer :: i, n, h


write(*,*) 'Berechnung des Integrals mit n='
read(*,*) n 

h=n-1
u=0

do i=2, h
  
   
  u=u+e(i, n)
  
 
end do
  
c= (4./(n-1.))*(u+(exp(1.0)+exp(5.0)/(5.))/(2.))

write(*,*) 'Das Ergebnis lautet:'
write(*,100) c

100 format(f19.15)

contains 

 real function a(i, n)

 integer, intent(in) :: i
 integer, intent(in) :: n

 a=1.+(i-1.)*(4.)/(n-1.)
 
 return

 end function a

 
 real function e(i, n)

 integer, intent(in) :: i
 integer, intent(in) :: n

 e=exp(a(i,n))/a(i,n)

 return
 
 end function e

 
 
end program Trapez