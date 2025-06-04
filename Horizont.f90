program Funktion

  implicit none
  
  real :: l, h 
   
  write(*,*) 'geben sie die Hoehe h vom Erdboden zum Beobachter in Metern an'
  read(*,*) h 
  

  l = sqrt ( (6.378E6 + h)**2 - 6.378E6**2 ) 
  
  write(*,*) 'die Entfernung l in Metern vom Beobachter zum Horizont ist'
  write(*,*) l
  
end program Funktion  
