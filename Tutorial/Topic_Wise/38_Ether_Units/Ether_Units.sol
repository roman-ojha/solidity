// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    *) Ether Units
        A literal number can take a suffix of wei, gwei or ether to specify a subdenomination of Ether, where Ether numbers without a postfix are assumed to be Wei.

        assert(1 wei == 1);
        assert(1 gwei == 1e9);
        assert(1 ether == 1e18);
        The only effect of the subdenomination suffix is a multiplication by a power of ten.

    *) 
        Wei	    1 => 1
        Kwei	1,000 => 10^3
        Mwei	1,000,000 => 10^6
        Gwei	1,000,000,000 => 10^9
        Szabo	1,000,000,000,000 => 10^12
        Finney	1,000,000,000,000,000 => 10^15
        Ether	1,000,000,000,000,000,000 => 10^18
        KEther	1,000,000,000,000,000,000,000 => 10^24
        MEther	1,000,000,000,000,000,000,000,000 => 10^24
        GEther	1,000,000,000,000,000,000,000,000,000 => 10^27
        TEther	1,000,000,000,000,000,000,000,000,000,000 => 10^30
*/

contract Units {
    uint256 balance = 1 wei; // 1
    uint256 balance2 = 1 ether; // 1,000,000,000,000,000,000
    uint256 balance3 = 1 gwei; // 1,000,000,000
}
