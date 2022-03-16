// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Integers:
        a) int (integers) -> default int256
            -> can't include signed value (-ve, +ve)
            -> size from 8 to 256 bit
            -> can be represented as int8 to int256
            -> by default value is 0
            -> int8: -128 to +127
            -> int16: -32768 to +32767
            -> range: -2^(n-1) to 2^(n-1)-1
        b) uint (unsigned integers) -> default uing256
            -> can't include signed value (+ve)
            -> size from 8 to 256 bit uint8 to uint256
            -> by default value is 0
            -> uint8: 0 to 255
            -> uint16: 0 to 65535
            -> range: 0 to 2^(n)-1
    *) Operators we can use:
        *) Comparisons: <=,<,==,!=,>=,> (evaluate to bool)
        *) Bit operators: &,|,^(bitwise exclusive or), ~(bitwise negation)
        *) Arithemetic operators: +,-,unary -, unary +, *, /,%(reminder),**(exponentialtion),<<(left shift),>>(right shift)

*/

contract integers {
    int8 count = 127;
}
