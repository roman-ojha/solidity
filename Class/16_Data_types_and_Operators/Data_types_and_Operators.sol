// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Integers:
        a) int (integers) -> default int256
            -> can include signed value (-ve, +ve)
            -> size from 8 to 256 bit
            -> can be represented as int8 to int256
            -> by default value is 0
            -> int8: -128 to +127
            -> int16: -32768 to +32767
            -> range: -2^(n-1) to 2^(n-1)-1
        b) uint (unsigned integers) -> default uing256
            -> can't include signed value (+ve)
            -> size from 8 to 256 bit uint8 to uint256
            -> by default value is 0
            -> uint8: 0 to 255
            -> uint16: 0 to 65535
            -> range: 0 to 2^(n)-1

            Operators:
                -> Comparisons: <=, <, ==, !=, >=, > (evaluate to bool)
                -> Bit operators: &, |, ^ (bitwise exclusive or), ~ (bitwise negation)
                -> Shift operators: << (left shift), >> (right shift)
                -> Arithmetic operators: +, -, unary - (only for signed integers), *, /, % (modulo), ** (exponentiation)
    *) Boolean:
        -> The bool value data type is used in Solidity to illustrate cases that have binary results. A bool has two fixed values: true or false, with false being the default. This data type only takes up 1B of storage.
        -> Operator supports:
            -> != (inequality)
            -> == (equality)
            -> ! (logical negation)
            -> && (logical conjunction, “AND”)
            -> || (logical disjunction, “OR”)
        -> EX:
            ->  bool public  IsVerified = False;
                bool public IsSent = True;
    *) Addresses:
        -> An address value type is specifically designed to hold up to 20B, or 160 bits, which is the size of an Ethereum address.
        -> Solidity actually offers two address value types: address and address payable. The difference between the two is that address payable can send and transfer Ether.
        -> We can use an address to acquire a balance using the .balance method and to transfer a balance using the .transfer method.
        -> EX:
            -> Contract  SampleAddress   } 
                address public  myAddress =
                0xb794f5ea0ba39494ce839613fffba74279579268;

                }
    *) Enums:
        -> Enums, or enumeration, values in Solidity consist of user-defined data types. This data type is used explicitly for constant values, such as the names of integral constants, making a smart contract easier to read and maintain. Enums can help reduce the incidence of bugs in your code.
        -> EX:
            -> Contract  SampleEnum   } 

                enum  < food_classes >  }
                        carb, protein, fats-oils, water, vitamin, and minerals;
                }
    -> https://blog.logrocket.com/ultimate-guide-data-types-solidity/#:~:text=There%20are%20several%20value%20types,addresses%2C%20enums%2C%20and%20bytes.
    *) Operators we can use:
        *) Comparisons: <=,<,==,!=,>=,> (evaluate to bool)
        *) Bit operators: &,|,^(bitwise exclusive or), ~(bitwise negation)
        *) Arithemetic operators: +,-,unary -, unary +, *, /,%(reminder),**(exponentialtion),<<(left shift),>>(right shift)

*/

/*
    *) Solidity value types
        Signed integers
        Unsigned integers
        Boolean
        Addresses
        Enums
        Bytes

    *) Solidity reference types
        Fixed-size arrays
        Dynamic-size arrays
        Array members
        Byte arrays
        String arrays
        Structs
        Mapping

*/

contract integers {
    int8 count = 127;
}
