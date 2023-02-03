// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    *) Import
        - Example
            -> local files
            -> third parties EX: github.com
                -> this works in Remix IDE
*/

// to import another solidity file we will do this
import "./Utilities.sol";

contract Main {
    function getAddition() public pure returns (uint256) {
        // now here we can use imported files stuff
        uint256 result = Calculator.add(1, 2);
        return result;
    }
}
