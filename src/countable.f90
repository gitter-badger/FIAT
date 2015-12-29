!
!  countable.f90
!
!  This program is free software; you can redistribute it and/or modify
!  it under the terms of the GNU General Public License as published by
!  the Free Software Foundation; either version 3 of the License, or
!  (at your option) any later version.
!  
!  This program is distributed in the hope that it will be useful,
!  but WITHOUT ANY WARRANTY; without even the implied warranty of
!  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!  GNU General Public License for more details.
!  
!  You should have received a copy of the GNU General Public License
!  along with this program; if not, write to the Free Software
!  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
!  MA 02110-1301, USA.
!  

module countable_mod
  use iterator_mod only: iterator_type
  implicit none
  private

  type, extends(iterator_type), abstract, public :: countable_type
  contains
    procedure(int_func), deferred :: size
  end type countable_type

  abstract interface
    function int_func()
      integer :: int_func
    end function int_func
  end interface
end module countable_mod
