program Trapez2

implicit none 

real :: u, c

integer :: i, j, h

real, dimension(20) :: k = (/ (2.0**(j), j = 1, 20) /) 



write(*,200) 

200 format(t9,'n',14x,'absoluter Fehler',/, &
           '-----------------------------------------')    

do j=1, 20

u=0
h=2**j-1

  do i=2, h
  
   
   u=u+e(i, j)
  
 
  end do
  
 c= abs((38.290157539447236)-((4./(((2.)**j)-1.))*(u+(exp(1.0)+exp(5.0)/(5.))/(2.))))


write(*,100) k(j), c

100 format(es15.5,5x,f19.15)

end do


contains 

 real function a(i, j)

 integer, intent(in) :: i
 integer, intent(in) :: j

 a=1.+(i-1.)*(4.)/(((2.)**j)-1.)
 
 return

 end function a

 
 real function e(i, j)

 integer, intent(in) :: i
 integer, intent(in) :: j

 e=exp(a(i,j))/a(i,j)

 return
 
 end function e

 
 
end program Trapez2