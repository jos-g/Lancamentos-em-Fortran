program xyt_txt
implicit none
 character(len=100) :: nome_arq
 integer :: i, ios
 real :: delta_t
 real :: h, d_x
 real :: vox !declarar variáveis
 real :: t, tq
 real, parameter :: g  = 9.80665
 real :: vo 
 real :: ho 
!------------------------------------
print*, 'Insira a velocidade inicial do avião (km/h):'
read*, vo
print*, 'Insira a altura inicial do avião (m):'
read*, ho
tq  = sqrt(2*ho/g)
delta_t = tq/40
vox = 300/3.6
!------------------------------------
do i= 0, 40
t = i*delta_t
d_x = vox*t
h = ho - g*(t**2)*1/2
print*, t , d_x, h
end do
end program 