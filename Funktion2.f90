program Funktion

  implicit none
  
  integer :: x, y, f
  
  write(*,*) 'geben sie eine Zahl fuer x ein'
  read(*,*) x
  write(*,*) 'geben sie eine Zahl fuer y ein'
  read(*,*) y
  
  if ( x >= 0 ) then 
   if ( y >= 0 ) then
    f = x + y
   else if ( y < 0 ) then
    f = x + y**2
   end if
  
  else if ( x < 0 ) then
   if ( y >= 0 ) then
    f = x**2 + y
   else if ( y < 0 ) then
    f = x**2 + y**2
   end if  
  end if 
   
 

  write(*,*) f
  
end program Funktion  
