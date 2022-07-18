// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract Practice02Calculator {
    int256 c;

    constructor() {
        c = 0;
    }

    function getC() public view returns (int256) {
        return c;
    }

    function add(int256 _x, int256 _y) public {
        c = _x + _y;
    }

    function subtract(int256 _x, int256 _y) public {
        c = _x - _y;
    }

    function multiply(int256 _x, int256 _y) public {
        c = _x * _y;
    }

    function divide(int256 _x, int256 _y) public {
        c = _x / _y;
    }
}
