program Schwerpunkt

real :: a, b, c, d, sx, sy, sz
real :: suma=0
real :: sumb=0
character :: Titel
integer :: n, i
real , allocatable ,dimension(:,:) :: m 


read(*,*) Titel
open(unit=15, file = 'Titel', action='read')
read(*,*) b                           !Objekte werden eingelesen
n= b 
close(unit=15)


allocate( m(2:n+1, 4) )

open(unit=15, file = 'Titel', action='read')
do i=2, n+1
read(*,'(f20.1 , 1x , f20.5 , 1x , f20.5 , 1x , f20.5) ') a , b , c , d

m(i,1) = a
m(i,2) = b
m(i,3) = c
m(i,4) = d
end do

close(unit=15)

do i = 2, n+1            !Schwerpunkt
suma = suma + m(i,2) 
sumb = sumb + m(i,1) *  m(i,2)
end do

sx= suma /sumb !x-Koordinate 
suma=0 
sumb=0



do i = 2, n+1 
suma = suma + m(i,3) 
sumb = sumb + m(i,1) *  m(i,3)
end do

sy= suma /sumb   !y-Koordinate 
suma=0 
sumb=0


do i = 2, n+1 
suma = suma + m(i,4) 
sumb = sumb + m(i,1) *  m(i,4)
end do

sz= suma /sumb    !z-Koordinate 


end program Schwerpunkt