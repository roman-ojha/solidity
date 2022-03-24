// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/*
    -> event will help us to reduce the const to store value on blockchain 
    -> use case:
        -> to see the output of after we call the function on web3 dapps
*/
contract Event {
    //
    event balance(address account, string message, uint256 value);

    // here we have created the event called 'balance'
    // NOTE that we can't be able to access event in our own contract

    function setData(uint256 _value) public {
        // we are making funciton as simple type

        emit balance(msg.sender, "has value", _value);
        // when we will call the function 'setData' then the data that we are passing will emit on blockchain and show as log
        // so this event will be stored on transaction log on blockchain
        /*
        Log on Blockchain:
                {
                "from": "0xC1144C9dbf6F3489CE9C808a1Da653FB4465403d",
                "topic": "0x3028aee09e5f7149e98b3f7f8faa7e2cc5b353de720db250726b7c64d38b5f9c",
                "event": "balance",
                "args": {
                    "0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4", // 0th index
                    "1": "has value", // 1th index
                    "2": "20", // 2th index
                    "account": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
                    "message": "has value",
                    "value": "20"
                }
            }
        */
    }
}

// use indexing on event
contract chatApp {
    // here we are trying to make chatapp assuming that we are using web3.js
    // if we want to search all the message data that had been send by '_from' user then we will use indexing

    event chat(address indexed _from, address _to, string message);

    // NOTE you can pass numerous amount of parameter but you can only pass 3 indexed parameter

    function sendMessage(address _to, string memory _message) public {
        emit chat(msg.sender, _to, _message);
    }

    // now we have create the indexing event but we have to learn about how to access these data using indexing using web3
}
