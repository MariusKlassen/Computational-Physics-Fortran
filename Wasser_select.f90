program Wasser_select

  implicit none
  real :: F, C
  integer :: A
  
  write(*,*) 'Geben sie die Temperatur in Grad Fahrenheit' 
  read(*,*) F
  C = (F-32)/1.8
  A = nint(C)                      !Rundet auf n�chste Integerzahl
  select case ( A ) 
  case ( -273:-1 ) 
   write(*,*) 'Das Wasser befindet sich im festen Zustand'
  case ( 0 ) 
   write(*,*) 'Das Wasser befindet sich an seinem Schmelzpunkt'  
  case ( 1:3,5:99 )                 !Cases d�rfen sich nicht �berlappen
   write(*,*) 'Das Wasser befindet sich im fluessigen Zustand'
  case ( 4 )
    write(*,*) 'Das Wasser befindet sich im fluessigen Zustand und an seinem Punkt groe�ter Dichte'
  case ( 100 )
    write(*,*) 'Das Wasser befindet sich an seinem Siedepunkt'     
  case ( 101: )
    write(*,*) 'Das Wasser befindet sich im gasfoermigen Zustand'
  case ( :-274) 
    write(*,*) 'Die Temperatur befindet sich unterhalb des absoluten Nullpunkts, was nicht moeglich ist'     
  end select
 
 end program Wasser_select