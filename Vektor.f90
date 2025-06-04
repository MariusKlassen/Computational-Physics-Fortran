program Vektor

 implicit none
 real :: s
 real, dimension(5) :: a = (/ 0.2, -0.75, 1.0, 1.0, -5.3 /) 
 real, dimension(5) :: b = (/ -0.75, 0.02, 1.0, 5.3, 1.0  /)
 real, dimension(3) :: c = (/ 5.0, -3.0, 2.0 /) 
 real, dimension(3) :: d = (/ 2.0, 3.0, 4.0 /)
 real, dimension(3) :: p 
 real, dimension(2,4) :: x = reshape( (/ 1., -6., -5., -4., 4., 2., 2., 2. /), (/ 2, 4 /) )  
 real, dimension(4,3) :: y = reshape( (/ 1., 2., 0., 0., -2., 3., -1., -3., -1., 4., 2., 1. /), (/ 4, 3 /) )
 real, dimension(3) :: m
 real, dimension(3) :: h
 
 s = a(1)*b(1)+a(2)*b(2)+a(3)*b(3)+a(4)*b(4)+a(5)*b(5)
 p(1) = c(2)*d(3)-c(3)*d(2)
 p(2) = c(3)*d(1)-c(1)*d(3)
 p(3) = c(1)*d(2)-c(2)*d(1)
 m(1) = x(1,1)*y(1,1)+x(1,2)*y(2,1)+x(1,3)*y(3,1)+x(1,4)*y(4,1)
 m(2) = x(1,1)*y(1,2)+x(1,2)*y(2,2)+x(1,3)*y(3,2)+x(1,4)*y(4,2)
 m(3) = x(1,1)*y(1,3)+x(1,2)*y(2,3)+x(1,3)*y(3,3)+x(1,4)*y(4,3)
 h(1) = x(2,1)*y(1,1)+x(2,2)*y(2,1)+x(2,3)*y(3,1)+x(2,4)*y(4,1) 
 h(2) = x(2,1)*y(1,2)+x(2,2)*y(2,2)+x(2,3)*y(3,2)+x(2,4)*y(4,2)
 h(3) = x(2,1)*y(1,3)+x(2,2)*y(2,3)+x(2,3)*y(3,3)+x(2,4)*y(4,3)
  
 write(*,*) 'Das Skalarprodukt von a und b ist:'
 write(*,*) s
 write(*,*) 'Das Vektorprodukt von c und d ist:'
 write(*,*) p(1)
 write(*,*) p(2)
 write(*,*) p(3)
 write(*,*) 'Das Matrixprodukt von A und B ist:'
 write(*,*) m
 write(*,*) h
 
 
 
 
end program Vektor 