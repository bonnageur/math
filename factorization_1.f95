! Fortran 2008
! Input a number and factorize it with simple optimization

program Factorization_1

    implicit none

    integer :: number, i

    ! Prompt the user for the input number
    write(*,*) "Enter a positive integer: "
    read(*,*) number

    ! Check if the number is positive
    if (number <= 0) then
        write(*,*) "Error: Please enter a positive integer."
        stop
    end if

    ! Factorize the number
    write(*,*) "Prime factors of", number, "are: "
    i = 2
    do while (i**2 <= number)
        if (mod(number, i) == 0) then
            write(*,*) i
            number = number / i
        else
            i = i + 1
        end if
    end do

    if (number > 1) write(*,*) number     ! remainint prime factor (if any)

    stop
end program Factorization_1
