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
    mapping(uint256 => User) users;
    address[] usersAddress;
    uint256 countUser = 0;

    constructor() {
        admin = msg.sender;
    }

    function setUser(string memory _name, address _address) public {
        users[countUser] = User({
            name: _name,
            adrs: _address,
            uid: countUser,
            amount: 0
        });
        usersAddress.push(_address);
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

    function getUsersAddress() public view returns (address[] memory) {
        return usersAddress;
    }

    function sendTransaction() public payable {
        // address payable reciever = payable(_to);
        // reciever.transfer(1 ether);
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
