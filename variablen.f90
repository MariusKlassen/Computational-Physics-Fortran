program variablen
implicit none
integer :: x, y, z
call f(x)
! Welche Werte haben x, y, z und a hier?
contains
 subroutine f(x) 
 integer, intent(out) :: x 
 integer :: a
 a = 39 
 x = 40 
 y = 41 
 z = 42
 end subroutine f
end program variablen 