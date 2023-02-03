// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*Contract:

    Public      Private     Internal    External
    Outside        X           X         Outside
    Within      within      within          X
    Derived        X        Derived     Derived
    Other          X           X        Other
*/

// Outside Contract Means External Environment

// Within Contract
contract A {
    function f1() public pure returns (uint256) {
        // this funciton can be able to access by any one
        return 1;
    }

    function f2() private pure returns (uint256) {
        // this function can only be able to access within the contract
        return 2;
    }

    function f3() internal pure returns (uint256) {
        // internal visibility can't be able to access by outside the environment

        // uint x=f4();
        // here f4() function can't be able to access because external visibility can't be able to access with in the contract
        return 3;
    }

    function f4() external pure returns (uint256) {
        return 4;
    }
}

// Derived Contract
contract B is A {
    uint256 public b1 = f1();
    uint256 public b3 = f3();
    // uint256 public b2 = f2(); // Can't access
    // uint256 public b4 = f4(); // Can't access
}

// Other Contract
contract C {
    // Visiblility Access Are:
    // Public
    // External

    A obj = new A();
    uint256 public c1 = obj.f1();
    uint256 public c4 = obj.f4();
    // uint256 public c2 = obj.f2(); // Can't access
    // uint256 public c3 = obj.f3(); // Can't access
}
