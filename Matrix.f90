program Matrix

  implicit none
  integer :: i, j, x, y, a
  real :: s, maximum=0
  
  write(*,*) 'Geben sie die Zeilenanzahl'
  read(*,*) x
  write(*,*) 'Geben sie die Spaltenanzahl'
  read(*,*) y
  write(*,*) 'Geben sie die Matrixlemente zeilenweise'
  do i =  1, x                 ! i ist der Zeilenindex
  s=0
    do j = 1, y                ! j ist der Spaltenindex
    read(*,*) a
    s=s+abs(a)
    end do 
   if ( s > maximum ) then
     maximum=s
   end if
  end do  
  
  write(*,*) 'Die Zeilensummennorm lautet:'
  write(*,*) maximum 
  
end program Matrix
