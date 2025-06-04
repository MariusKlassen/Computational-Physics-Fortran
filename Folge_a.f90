program Folge_a 

 implicit none
 integer :: n
 integer, dimension(100) :: v
 
 v(1) = 1
 
 do n = 2, 100 
 
 v(n) = n-v(v(n-1)) 
 
 end do
 
 write(*,*) 'Die ersten 100 Folgeglieder lauten spaltenweise:'
 write(*,*) v
 
 
end program Folge_a 