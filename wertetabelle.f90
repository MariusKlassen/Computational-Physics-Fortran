program wertetabellef
  ! Dieses Programm soll eine Wertetabelle der Funktion
  !
  !   f(x) = x - 1/6 * x^3
  !
  ! ausdrucken.  Die Tabelle soll n = 100 Eintraege haben, bei x_1 =
  ! 0.0 beginnen und bei x_n = 1.0 enden.  Die anderen x-Werte sollen
  ! in gleichmaessigen Abstaenden dazwischen liegen.


  implicit none


  integer, parameter :: n = 100 ! Laenge der Wertetabelle
  real   , parameter :: a = 0.0 ! kleinster x-Wert
  real   , parameter :: b = 1.0 ! groesster x-Wert

  real, dimension(n,2) :: d     ! Wertetabelle (d(i,1) ist x_i, d(i,2)
                                ! ist f(x_i))
  integer :: i






  write (*,"(A)") " i      x       f(x)"
  write (*,"(A)") "---------------------"
  do i = 0, n
	 d(i,1) = i * 0.01

	 d(i,2) = f(0.01 * i)
	 
	 write (*,"(I3,2X,F7.5,2X,F7.5)") i, d(i,1), d(i,2)



  end do





  ! ==================================================================

contains

  real function f(x)
    ! Der zurueckgegebene Wert soll sein:
    !
    !   f(x) = x - 1/6 * x^3.

    real, intent(in) :: x


    f = x - x**3/6.0

  end function f

  ! ------------------------------------------------------------------



end program wertetabellef
