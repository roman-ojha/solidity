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

    // How can I figure out if a certain key exists in a mapping ?
    // https://ethereum.stackexchange.com/questions/13021/how-can-i-figure-out-if-a-certain-key-exists-in-a-mapping-struct-defined-inside
}
