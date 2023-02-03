// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    *) Modifiers
        -> Function Modifiers are used to modify the behaviour of a function. For example to add a prerequisite to a function.

*/

contract Owner {
    // -> First we create a modifier with or without parameter.
    address owner;

    // The function body is inserted where the special symbol "_;" appears in the definition of a modifier. So if condition of modifier is satisfied while calling this function, the function is executed and otherwise, an exception is thrown.
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    modifier costs(uint256 price) {
        if (msg.value >= price) {
            // if it is true only in that case we will allow
            _;
        }
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint256 price;

    constructor(uint256 initialPrice) public {
        price = initialPrice;
    }

    // here in this function we are applying the modifier 'costs'
    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    // here in this function we are applying the modifier 'onlyOwner'
    function changePrice(uint256 _price) public onlyOwner {
        price = _price;
    }
}
