// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract User {
    uint256 id;
    string name;
    bool is_male;
    address ads;

    constructor(
        uint256 _id,
        string memory _name,
        bool _is_male
    ) {
        id = _id;
        name = _name;
        is_male = _is_male;
        ads = msg.sender;
    }
}
