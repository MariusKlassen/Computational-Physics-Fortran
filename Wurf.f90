program wurfprog
  ! Berechnet die Weite eines Wurfs.
  !
  ! Die Benutzer werden nach der Anfangs-Geschwindigkeit v und dem
  ! Winkel zur Horizontalen gefragt.  Danach wird das Ergebnis
  ! ausgegeben.

  implicit none


  real :: v, alpha

  write (*,*) "v in m/s, alpha in Grad?"
  read (*,*) v, alpha

  write (*,*) "Wurfweite in m: ", wurfweite(v, alpha)


contains

  real function gradzurad(g)

    real, intent(in) :: g       ! Winkel in Grad

    gradzurad =g*3.14159265/180

  end function gradzurad


  real function polarzukart1(r, phi)

                                     ! p wird zweimal eindimensional anstatt einmal zweidimensional dargestellt
    real, intent(in) :: r            ! p enthaelt r und phi
    real, intent(in) :: phi
    
    
    
    polarzukart1=r*cos(phi)   !x-Koordinate
    
  end function polarzukart1 
   
  real function polarzukart2(r, phi)

                                    ! p enthaelt r und phi.
   real, intent(in) :: r
   real, intent(in) :: phi
    
   polarzukart2=r*sin(phi)          ! y-Koordinate  
  
  end function polarzukart2  
    

  ! ------------------------------------------------------------------

  real function flugzeit(vy)
  
    real, intent(in) :: vy                !hier entspricht: vy = polarkart2(v, gradzurad(alpha))
    
    flugzeit=2*vy/9.81

  end function flugzeit
 
 
  real function wurfweite(v, alpha)        
    
     real, intent(in) :: v                !hier entspricht: vx = polarkart1(v, gradzurad(alpha)) mit: wurfweite = flugzeit * vx
     real, intent(in) :: alpha
     
     wurfweite=flugzeit(polarzukart2(v, gradzurad(alpha)))*polarzukart1(v, gradzurad(alpha))
     
  end function wurfweite   
 
 
  
  


end program wurfprog
