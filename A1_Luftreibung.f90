program Luftreibung

use wurfmod 

implicit none 


real :: a, b, tol

write(*,*) 'Intervall von a bis b eingeben'
read(*,*) a, b 
write(*,*) 'Toleranz eingeben'
read(*,*) tol 
write(*,*) bisektion(f, a, b, tol)



contains


real function f(alpha)            !Deklaration der Funktion, von welcher die Nullstellen gesucht werden

real, intent(in) :: alpha

f=wurfweite(15., alpha) -8 

end function f 



real function bisektion(f, a, b, tol)          !Bisektion als Funktion

implicit none 

real, external :: f
real, intent(in) :: a
real, intent(in) :: b 
real, intent(in) :: tol 
real :: i, c, d


c=a
d=b


if ((f(a) > 0) .OR. (f(b) < 0)) then          !Fehlermeldung
  write(*,*) "Fehler vorhanden"
  bisektion=0
  return 
else 
 
  do while (abs(c-d) > tol )          !Bisektionsalgorithmus
    i=(c+d)/2
    if (f(i) < 0) then 
      c=i
    else 
      d=i
    end if
  end do 
end if 
bisektion=i

end function bisektion


end program Luftreibung