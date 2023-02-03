// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    https://youtu.be/XiDs_UmEDG0
    -> through built in variable you can get the information about you environment such as: the ethereum address call the smart contract or how much of ether transfer to the smart contract
    -> we can breakdown these built in variable in three categories and they are:
        1) Tx (transaction)
            -> variable:
                -> tx.origin (this is the ethereum address that send the transaction)
                -> tx.gasprice (uint): gas price of the transaction
        2) msg (message)
            -> this will give the information about calling environment of the function
            -> variables:
                -> msg.value (will give the amount of ether that was send to the smart contract UNIT: wei)
                -> msg.sender (this will given the ethereum address that call the function)
                -> msg.data (bytes calldata): complete calldata
        3) block
            -> variable:
                -> block.timestamp (this will give us the timestamp at which we call block.timestamp)
                -> block.chainid (uint): current chain id
                -> block.coinbase (address payable): current block miner’s address
                -> block.difficulty (uint): current block difficulty
                -> block.number (uint): current block number
                -> block.gaslimit (uint): current block gaslimit


Alice => Contract A:            =>  Contract B
            tx.origin = Alice       tx.origin = Alice
            msg.sender = Alice      msg.sender = contract A
                
*/

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
