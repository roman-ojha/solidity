// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Structure
        -> 'struct' is the userDefine data type
        -> structure is the storage type
        -> we have to use 'memory' keyword if we want to use struct inside the function
*/

struct Student {
    uint256 roll;
    string name;
}

contract School {
    Student public s1;

    constructor(uint256 _roll, string memory _name) {
        s1.roll = _roll;
        s1.name = _name;
    }

    function change(uint256 _roll, string memory _name) public {
        Student memory new_student = Student({roll: _roll, name: _name});
        // here we are creating student structure using constructor
        s1 = new_student;
    }
}
