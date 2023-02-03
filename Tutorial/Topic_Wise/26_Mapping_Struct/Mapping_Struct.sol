// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Map {
    struct Student {
        string name;
        uint256 class;
    }
    mapping(uint256 => Student) public data;

    function setter(
        string memory _name,
        uint256 _class,
        uint256 _roll
    ) public {
        data[_roll] = Student({class: _class, name: _name});
    }
}
