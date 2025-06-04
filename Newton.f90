program Newton

implicit none

real :: x0
real :: tol
real :: x
integer :: i

write(*,*) 'x0'
read(*,*) x0
write(*,*) 'tol'
read(*,*) tol


do while (abs(f(x)) > tol)
  do i=1, 100
  x = x0

  x= x-f(x)/df(x)
  
  end do

end do 


write(*,*) x, f(x)

contains 
 real function f(y)

  real, intent(in) :: y

  f=y**3-3*y**2+y+3
! Funktion eintragen

 end function f



 real function df(z)

  real, intent(in) :: z

  df= 3*z**2-6*z+1
!Ableitung eintragen 
 end function df




end program Newton