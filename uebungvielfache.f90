program vielfache
  ! Berechnet die ersten drei Vielfachen der eingegebenen
  ! Zahl.

  implicit none

  integer :: zahl
  integer :: zahl1, zahl2, zahl3         ! hier haben die Variablennamen mit einer Zahl anfangen

  write (*,*) 'Gib eine ganze Zahl ein:'
  read (*,*) zahl                        ! hier stand 1 anstatt l 

  zahl1 = 1*zahl                     ! hier war der Folgefehler mit den Variablennamen
  zahl2 = 2*zahl
  zahl3 = 3*zahl

  write (*,*) 'Die ersten drei Vielfachen sind:'         ! hier stand " anstatt '
  write (*,*) zahl1                           ! hier ist wieder der Folgefehler mit den Variablennamen
  write (*,*) zahl2
  write (*,*) zahl3

end program vielfache
