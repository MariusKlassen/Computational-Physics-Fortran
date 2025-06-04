program Wasser

  implicit none
  real :: F, C
  integer :: A
  
  write(*,*) 'Geben sie die Temperatur in Grad Fahrenheit' 
  read(*,*) F
  C = (F-32)/1.8
  A = nint(C)
  if ( A < 0 .AND. A >= -273 ) then
    write(*,*) 'Das Wasser befindet sich im festen Zustand'
  else if ( A == 0 ) then
    write (*,*) 'Das Wasser befindet sich an seinem Schmelzpunkt' 
  else if ( A > 0 .AND. A<100 ) then
    write (*,*) 'Das Wasser befindet sich im fluessigen Zustand'
  else if ( A == 4 ) then
    write (*,*) 'Das Wasser befindet sich im fluessigen Zustand und an seinem Punkt groeßter Dichte'
  else if ( A == 100 ) then
    write (*,*) 'Das Wasser befindet sich an seinem Siedepunkt' 
  else if ( A > 100 ) then
    write (*,*) 'Das Wasser befindet sich im gasfoermigen Zustand'  
  else if ( A < -273 ) then
    write (*,*) 'Die Temperatur befindet sich unterhalb des absoluten Nullpunkts, was nicht möglich ist' 
  end if    
 
 end program Wasser
 