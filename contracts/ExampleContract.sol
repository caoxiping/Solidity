// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract ExampleContract {
    address private  owner;
   

    constructor() {
        owner = msg.sender;
    }
     modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.
        _;
    }
       modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }
}
