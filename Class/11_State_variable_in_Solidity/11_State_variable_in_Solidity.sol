// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract State {
    // the variable that we write on 'contract' level then that variable is called as state variable
    uint256 public age;

    // if we will write public in declaration of variable the for that paticualr variable function will automatically been created
    // NOTE: if we have declare state variable the we can change the value of that variable in the contract block, but we can create constructor and assing value to that variable, or we can create setter function
    constructor() {
        age = 10;
    }

    function setAge() public {
        age = 10;
    }

    // state variable
    uint256 public age1 = 10;

    /*
        *) Properties of state variable:
            -> it will permanently store on blockchain and contract storage because of that we have to pay some amount of gas, it means that the amount of state variable that we declare we have to pay according to that. so, use state variable carefully
            -> on cpp programming language, if we declare variable it will automatically assign NaN as a value, but in a case of solidity, value will not assign as NaN, null etc.., for int it will assing as 0(zero) value
            -> this is compile type language not dynamically type language
            -> Instance of that contract cannot have other state variables besides those already declared
    */
}
