// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Ifelse {
    function foo(uint256 x) public pure returns (uint256) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint256 _x) public pure returns (uint256) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way to write if / else statement
        // the "?" operator is called the ternary operator
        return _x < 10 ? 1 : 2;
    }


    function sumToN(uint16 n) public pure returns(uint16) {
        uint16 sum = 0;
        uint16 i = 1; 
        while(i <= n) { //只改了这一行
            sum += i;
            i++; // 修改循环变量的值
        }
        return sum;
    }


    function sumToFor(uint16 n) public pure returns(uint16) {
        uint16 sum = 0;
        uint16 i = 1; 
        for(; i <= n; ) { // 循环控制语句只剩下test-statement: i <= n
            sum += i;
            i++; // 修改循环变量的值
        }
        return sum;
    }
}