// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Byts {

        bytes3 s = 'abc';
        bytes1 ch = s[1]; // ch的值为0x62，也就是'b'的ascii值

        function getBytes() public  view returns (bytes3 byt){
             return ch;
        }

}