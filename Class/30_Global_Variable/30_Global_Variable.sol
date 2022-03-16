// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Global {
    function getter()
        public
        view
        returns (
            uint256 block_no,
            uint256 timestamp,
            address msgSender
        )
    {
        return (block.number, block.timestamp, msg.sender);
        // this will return bloc_no, timestamp when this block had been create, msgSender is the address
        // https://www.epochconverter.com/
        // other type of global variable: https://docs.soliditylang.org/en/v0.8.6/units-and-global-variables.html
    }
}
