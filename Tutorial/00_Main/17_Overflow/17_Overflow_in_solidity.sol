// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// pragma solidity >=0.5.0;
// problem on older version

// https://peckshield.medium.com/alert-new-batchoverflow-bug-in-multiple-erc20-smart-contracts-cve-2018-10299-511067db6536
// https://peckshield.medium.com/integer-overflow-i-e-proxyoverflow-bug-found-in-multiple-erc20-smart-contracts-14fecfba2759

contract local {
    uint8 public money = 255;

    function setter() public {
        money = money + 1;
        // if we will call setter function one time then the value of money will become 0
        // but this problem doesn't exist on newer version of solidity programming language
    }
}
