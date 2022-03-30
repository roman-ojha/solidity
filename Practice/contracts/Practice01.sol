//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

struct User {
    string name;
    uint256 uid;
    address adrs;
    string DOB;
}

contract Practice01 {
    address public admin;
    mapping(uint256 => User) public users;
    uint256 countUser = 0;

    constructor() {
        admin = msg.sender;
    }

    function getUser(
        string memory _name,
        address _address,
        string memory _DOB
    ) public {
        users[countUser] = User({
            name: _name,
            adrs: _address,
            DOB: _DOB,
            uid: countUser
        });
    }
}
