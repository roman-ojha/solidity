//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

struct User {
    string name;
    uint256 uid;
    address adrs;
    uint256 amount;
}

contract Practice01 {
    address public admin;
    mapping(uint256 => User) public users;
    uint256 countUser = 0;

    constructor() {
        admin = msg.sender;
    }

    function setUser(string memory _name) public {
        users[countUser] = User({
            name: _name,
            adrs: msg.sender,
            uid: countUser,
            amount: 0
        });
        countUser++;
    }

    function getUser(uint256 _uid) public view returns (User memory) {
        require(_uid < countUser);
        return users[_uid];
    }

    function setAmount(uint256 _uid, uint256 _amount) public {
        require(_uid < countUser);
        users[_uid].amount = _amount;
    }
}
