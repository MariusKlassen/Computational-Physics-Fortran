program Newtonverfahren
implicit none
real :: x0 , tol
	
write(*,*) 'Geben sie den Startwert ein'
read(*,*) x0
	
write(*,*) newton (f , df , x0 , 0.000001 )


contains
	!
real function f(x)         !Zubehandelnde Funktion
real , intent(in) :: x                
		
		f = x**3 -3*x**2 + x + 3
	
end function f

	
real function df(x)         ! Die Ableitung der Funktion
real , intent(in) :: x
		
		df = 3*x**2 - 6*x + 1
end function df

	
real function newton (f , df , x0 , tol )    !Newtonverfahren-Funktion
	
		real , external :: f
		real , external :: df
		real , intent(in) :: x0
		real , intent(in) :: tol
		real :: a
		real :: b
		real :: xj
		
		xj = x0

	b = f(x0)
	b = abs(b)
do while (b >= tol)                       !Newtonverfahren-Algorithmus
		a = f(xj) / df(xj)
		xj = xj - a
		b = abs(f(xj))
end do
	
    newton = xj
end function newton

end program Newtonverfahren
