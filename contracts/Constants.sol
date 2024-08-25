// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Constants {

        uint public constant ratio = 3;
    /**
    constructor() {
        ratio = 0; // 不合法
    }
    */
    uint  public  immutable n=1;

    constructor () {
        n = 5;
    }
    function f() public pure returns(uint) {
        //return  ratio;
        
        return  n;
    }
}