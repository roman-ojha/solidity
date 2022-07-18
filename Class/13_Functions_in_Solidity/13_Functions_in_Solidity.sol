// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract local {
    uint256 age = 10;

    // <function_keyword> <getter_or_setter|function_name>() <visibility> <pure_or_view> returns(<datatype>)
    function getter() public view returns (uint256) {
        // public if we want outsider contract to access this function
        // view if we are not making any change just getting the value then we will use view
        // returns for which datatype that we want to return
        return age;
        // for getter we don't have to pay any gas, because we are not changing value of state variable inside the getter function
    }

    function setter(uint256 newage) public {
        // here in this function we are not returning and view so we will not use those keyword
        // we can also pass parameter on the function
        age = newage;
        // for setter function we have to pay some gas because we are chaging value of state variable inside the setter function
    }

    // if we will create public state varialbe then there is no need to create getter function for that variable
    string public name = "Roman";
}
