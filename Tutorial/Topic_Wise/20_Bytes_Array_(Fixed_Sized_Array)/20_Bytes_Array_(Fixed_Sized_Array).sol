// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
 *) Bytes array:
    -> A Solidity byte array is a dynamic array that can hold any number of bytes. This differs from the bytes value type we discussed earlier, which can take 32B for each variable. A byte array holds all of the bytes together tightly.
    -> 1 bytes = 8bit;
    -> 1 hexadecimal digit = 4bits
    -> Everything that will be stored in the byte array will be in the form of hexadecimal digits
    -> byte array is immutable or not modified
    -> padding of 0 is added at the end if the value(by which the array is initialized) does not occupy the entire space
*/

contract Array {
    bytes3 public b3; //3 bytes array
    // compiler wil automatically create array if we will use 'bytes' keyword
    bytes2 public b2; //2 bytes array

    function setter() public {
        b3 = "abd";
        b2 = "ab";
    }

    // directly assign values
    bytes name = "Roman";

    function getName() public view returns (string memory) {
        // if we will just return byte value then we will get : 0x526f6d616e
        // so rather we will convert bytes into string and then return
        return string(name);
    }

    function length() public view returns (uint256) {
        // read length property
        return name.length;
    }

    function pushE(string memory val) public {
        // converting string into bytes & pushing 1st char from string
        name.push(bytes(val)[0]);
    }
}
