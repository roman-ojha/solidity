// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Array:
        -> Fixed Size Array
        -> Dynamic Size Array
*/

contract Array {
    uint256[] public arr = [10, 20, 30, 40];
    address[] adrs;

    function setter(uint256 index, uint256 value) public {
        arr[index] = value;
    }

    function length() public view returns (uint256) {
        return arr.length;
    }

    function returnArray() public view returns (uint256[] memory) {
        // we can return all element form the array like this
        return arr;
    }

    function returnMultiple()
        public
        view
        returns (address[] memory, uint256[] memory)
    {
        // we can return multiple type of value like this as well
        return (adrs, arr);
    }

    function f(uint len) {
        // if you want to initialized the empty array like this
        // in that case we have to give the size of array
        uint[] memory a = new uint[](7);
        bytes memory b = new bytes(8);
        a[6] = 8;
    }

    // EX:
    struct Bar {
        address owner;
        uint[] x;
    }
    Bar[] public bars;
    function foobar(address a) public {
        Bar memory b;
        b.owner = a;
        //When 'b' is pushed to 'bars' array:
        // (1) 'b' will be converted from memory to storage.
        // (2) And 'x' inside it will be initialized automatically to empty array.
        bars.push(b)
    }
}
