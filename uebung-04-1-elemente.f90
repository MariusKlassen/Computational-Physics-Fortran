program elemente

  implicit none

  character(len=*), parameter :: nam1 = "Wasserstoff"
  integer         , parameter :: ord1 = 1
  real            , parameter :: mas1 = 1.008
  real            , parameter :: rad1 = 32e-12

  character(len=*), parameter :: nam2 = "Helium"
  integer         , parameter :: ord2 = 2
  real            , parameter :: mas2 = 4.003
  real            , parameter :: rad2 = 28e-12

  character(len=*), parameter :: nam3 = "Lithium"
  integer         , parameter :: ord3 = 3
  real            , parameter :: mas3 = 6.941
  real            , parameter :: rad3 = 152e-12

  character(len=*), parameter :: nam4 = "Beryllium"
  integer         , parameter :: ord4 = 4
  real            , parameter :: mas4 = 9.012
  real            , parameter :: rad4 = 112e-12

  character(len=*), parameter :: nam5 = "Bor"
  integer         , parameter :: ord5 = 5
  real            , parameter :: mas5 = 10.811
  real            , parameter :: rad5 = 88e-12

  character(len=*), parameter :: nam6 = "Kohlenstoff"
  integer         , parameter :: ord6 = 6
  real            , parameter :: mas6 = 12.011
  real            , parameter :: rad6 = 77e-12

  character(len=*), parameter :: nam7 = "Stickstoff"
  integer         , parameter :: ord7 = 7
  real            , parameter :: mas7 = 14.007
  real            , parameter :: rad7 = 70e-12

  character(len=*), parameter :: nam8 = "Sauerstoff"
  integer         , parameter :: ord8 = 8
  real            , parameter :: mas8 = 15.999
  real            , parameter :: rad8 = 66e-12

  character(len=*), parameter :: nam9 = "Flour"
  integer         , parameter :: ord9 = 9
  real            , parameter :: mas9 = 18.998
  real            , parameter :: rad9 = 64e-12

  character(len=*), parameter :: nam10 = "Neon"
  integer         , parameter :: ord10 = 10
  real            , parameter :: mas10 = 20.180
  real            , parameter :: rad10 = 58e-12

  character(len=*), parameter :: fmtstring &
       & = "(hier Format einsetzen)"

  write (*,"(a)") "Name          Z  Masse/amu  Radius/m"
  write (*,"(a)") "------------------------------------"
  write (*,fmtstring) nam1 , ord1 , mas1 , rad1
  write (*,fmtstring) nam2 , ord2 , mas2 , rad2
  write (*,fmtstring) nam3 , ord3 , mas3 , rad3
  write (*,fmtstring) nam4 , ord4 , mas4 , rad4
  write (*,fmtstring) nam5 , ord5 , mas5 , rad5
  write (*,fmtstring) nam6 , ord6 , mas6 , rad6
  write (*,fmtstring) nam7 , ord7 , mas7 , rad7
  write (*,fmtstring) nam8 , ord8 , mas8 , rad8
  write (*,fmtstring) nam9 , ord9 , mas9 , rad9
  write (*,fmtstring) nam10, ord10, mas10, rad10

end program elemente
