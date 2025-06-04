program Folge_b

 implicit none
 integer :: n, m
 integer, allocatable, dimension(:) :: v
 
 write(*,*) 'Geben sie die Anzahl der Folgen-Glieder an'
 
 read(*,*) m

 allocate( v(m) )
 
 do n = 2, m 
 
 v(1) = 1
 v(n) = n-v(v(n-1)) 
 
 end do
 
 write(*,*) 'Die Folge-Glieder lauten:'
 write(*,*) v
 
 
end program Folge_b