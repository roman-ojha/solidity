// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

/*
    -> String arrays are dynamic, like byte arrays, but they have unique constraints.
    -> For example, string does not have an index so it lacks array members such as 'length', 'push', and 'pop'. If three is a need to perform any of these functions, string variables should be converted to bytes first, and then converted back to strings after the operation
*/

contract StringType {
    string name;

    constructor(string memory _name) {
        // We can't store string in storage inside function
        // for that reason we will store string into memory
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    // get particular index value
    function at(uint256 _index) public view returns (string memory) {
        // First getting particular index into byte
        bytes1 elm = bytes(name)[_index];
        return string(abi.encodePacked(elm));
    }

    // function to get length of string
    function len() public view returns (uint256) {
        return bytes(name).length;
    }

    // Function to slice string
    function slice(uint256 begin, uint256 end)
        public
        view
        returns (string memory)
    {
        bytes memory a = new bytes(end - begin + 1);
        for (uint256 i = 0; i <= end - begin; i++) {
            a[i] = bytes(name)[i + begin - 1];
        }
        return string(a);
    }

    // Function to concatenate string
    function strCon(string memory _str) public {
        name = string(abi.encodePacked(name, _str));
    }
}
