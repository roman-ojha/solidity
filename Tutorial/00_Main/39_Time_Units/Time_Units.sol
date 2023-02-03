// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    *) Time Units
        Suffixes like seconds, minutes, hours, days and weeks after literal numbers can be used to specify units of time where seconds are the base unit and units are considered naively in the following way:

        1 == 1 seconds

        1 minutes == 60 seconds

        1 hours == 60 minutes

        1 days == 24 hours

        1 weeks == 7 days

        Take care if you perform calendar calculations using these units, because not every year equals 365 days and not even every day has 24 hours because of leap seconds. Due to the fact that leap seconds cannot be predicted, an exact calendar library has to be updated by an external oracle.
*/

contract Unit {
    function f(uint256 start, uint256 daysAfter) public {
        if (block.timestamp >= start + daysAfter * 1 days) {}
    }
}
