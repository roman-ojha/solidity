// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
 *) Bytes array:
    -> 1 bytes = 8bit;
    -> 1 hexadecimal digit = 4bits
    -> Everything that will be stored in the byte array will be in the form of hexadecimal digits
    -> byte array is immutable or not modified
    -> padding of 0 is added a the end if the value(by which the array is initialized) does not occypy the entire space
*/

contract Array {
    bytes3 public b3; //3 bytes array
    // compiler wil automatically create array if we will use 'bytes' keyword
    bytes2 public b2; //2 bytes array

    function setter() public {
        b3 = "abd";
        b2 = "ab";
    }
}
