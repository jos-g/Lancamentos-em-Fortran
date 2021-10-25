program vxt_txt
implicit none
 integer :: i
 real :: delta_t, k, a
 real :: voy, vox, b
 real :: vx, vy, v !declarar variáveis
 real :: ts , tt, t 
 real, parameter :: pi = 3.14159
 real, parameter :: g  = 9.80665
 real :: vo 
!-----------------------------------
print*,'Insira o valor do ângulo (em graus):'
read*, a
k = a*pi/180
print*, 'Insira a velocidade inicial (em m/s):'
read*, vo
print*
!------------------------------------
voy = vo*sin(k)
vox = vo*cos(k)
ts  = voy/g
tt = 2*voy/g
delta_t = tt/20
!------------------------------------
do i= 0, 20
t = i*delta_t
vx = vox
vy = voy - g*t
b = vx**2 + vy**2
v = sqrt(b)
print*, t , v
end do
end program
