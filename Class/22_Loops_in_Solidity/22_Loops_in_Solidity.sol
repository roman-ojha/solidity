// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    -> types of loop on solidity:
        -> while
        -> for
        -> do-while
*/

contract loop {
    uint256[3] public arr;

    function whileLoopSetter() public {
        uint256 i = 0;
        while (i < arr.length) {
            arr[i] = i + 1;
            i++;
        }
    }

    function forLoopSetter() public {
        for (uint256 i = 0; i < arr.length; i++) {
            arr[i] = i + 1;
        }
    }

    function doWhileSetter() public {
        uint256 i = 0;
        do {
            arr[i] = i + 1;
            i++;
        } while (i < arr.length);
    }
}
