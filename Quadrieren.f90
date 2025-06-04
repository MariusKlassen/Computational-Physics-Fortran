program Quadrieren

  implicit none
  
  integer :: x, k
  
  write(*,*) 'Berechnung des Quadrats einer ganzen Zahl'
  write(*,*)
  write(*,*) 'Bitte geben sie eine ganze Zahl'
  
  read(*,*) x
  
  
  k = x**2
  
  write(*,*) k
  
end program Quadrieren  
