program Trapez4

implicit none 

real :: u, c

real, parameter :: pi= 3.141592653559231

integer :: i, j, h

real, dimension(20) :: k = (/ (2.0**(j), j = 1, 20) /) 



write(*,200) 

200 format(t9,'n',14x,'absoluter Fehler',/, &
           '-----------------------------------------')    

do j=1, 20

u=0
h=2**j-1

  do i=2, h
  
   
   u=u+sinus(i, j)
  
 
  end do
  
 c= abs((15.079644737231008)-((2.*pi/(((2.)**j)-1.))*(u+(12./(sin(0.)*12.+13.)+12./(sin(2.*pi)*12.+13.))/(2.))))


write(*,100) k(j), c

100 format(es15.5,5x,f19.15)

end do


contains 

 real function a(i, j)

 integer, intent(in) :: i
 integer, intent(in) :: j

 a=1.+(i-1.)*(2.*pi)/(((2.)**j)-1.)
 
 return

 end function a

 
 real function sinus(i, j)

 integer, intent(in) :: i
 integer, intent(in) :: j

 sinus=12./(sin(a(i,j))*12.+13.)

 return
 
 end function sinus


end program Trapez4