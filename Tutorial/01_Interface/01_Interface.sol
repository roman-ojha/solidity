// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    -> Interfaces are often found at the top of a smart contract. They are identified using the “interface” keyword. The interface contains function signatures without the function definition implementation (implementation details are less important). You can use an interface in your contract to call functions in another contract.
*/

/*
    -> you can also use interface when you want to access the deployed contract functionality
*/

interface ICounter {
    function count() external view returns (uint256);

    // now here we will declare the count getter function
    function increment() external;
    // this is how we will declare the interface
}

contract MyContract {
    function incrementCounter(address _counter) external {
        // now here we will call the interface function
        // for that we have to pass the contract address of that interface to call the contract function
        ICounter(_counter).increment();
    }

    function getCount(address _counter) public view returns (uint256) {
        return ICounter(_counter).count();
    }
}
