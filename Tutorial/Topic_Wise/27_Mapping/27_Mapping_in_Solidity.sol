// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    *) Mapping:
        -> Concept of keys and value;
        -> mapping(key=>value)
*/

contract Map {
    mapping(uint256 => string) public rool_no;

    function setter(uint256 key, string memory value) public {
        rool_no[key] = value;
    }

    // Return mapping from function
    struct User {
        string name;
    }

    // here we are mapping 'address' with 'User'
    // we have to play smartly
    mapping(address => User) public balances;
    // while creating new 'balances' for new address
    // we will push that address int the 'addressLUT' so that we can extract the value(User) associated with that address
    address[] public addressLUT;

    function get_balance() public view returns (User[] memory) {
        // we have to return it as array
        // for that we have to create the same size if array as the size of mapping
        User[] memory user = new User[](addressLUT.length);
        for (uint256 i = 0; i < addressLUT.length; i++) {
            // because 'user' is the fixed size array we have to assign the 'User' into every index
            user[i] = balances[addressLUT[i]];
        }
    }

    // mapping with 'uint' is easy
    mapping(uint256 => User) public users;
    // lets we are adding 'User' with 'uint256' incrementally
    // 0, 1, 2, 3, 4
    // we will store the size of key  that we store into one variable
    uint256 no_of_users = 0;

    function get_user() public view returns (User[] memory) {
        User[] memory user = new User[](no_of_users);
        for (uint256 i = 0; i < no_of_users; i++) {
            user[i] = users[i];
        }

        return user;
    }
}
