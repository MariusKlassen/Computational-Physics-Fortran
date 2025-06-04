program Taylor_sinus

	implicit none

	real :: s, n_s, x, R_A                            ! s = Ergebnis der Summe, n_s = n-ter Summand, R_A = Relative Abweichung
	integer :: n                                      ! n = Laufvariable

	write(*,*) 'Geben sie einen Wert fuer x'
	read(*,*) x

	s = x                                             ! Für n=1 ist s=x und n_s=x, deswegen Anfang bei n=2
	n_s = x
	n = 2                                              

	do while (abs(n_s) > 1.0E-6 * abs(s))
		n_s = n_s * ((x**2) / ((2*n-1)*(2*n-2))) *(-1) ! Multiplizieren, um zum nächsten Summand zu gelangen 
	   	s = s + n_s                                    ! n-ter Summand wird addiert
	   	n = n + 1                                      ! n läuft ganzzahlig durch
	end do

	R_A = abs((s - sin(x))/sin(x))                     ! Berechnung Relativer Abweichung

	write(*,*) 'x=',x,'s=',s,'sin(x)=',sin(x),'R_A=',R_A, 'n=',n

end program Taylor_sinus
