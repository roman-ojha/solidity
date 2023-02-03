// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract State {
    // in enum we assign name for the particular enum integral value
    enum user {
        allowed,
        not_allowed,
        wait
    }
    user public u1 = user.allowed; // ul=0;
    user public u2 = user.not_allowed; // ul=1;
    user public u3 = user.wait; // ul=2;

    uint256 public lottery = 1000;

    function owner() public {
        if (u1 == user.allowed) {
            lottery = 0;
        }
    }

    function changeOwner() public {
        u1 = user.not_allowed;
    }
}
