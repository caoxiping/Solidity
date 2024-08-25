// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract Enum {
    enum ActionChoices { 
        GoLeft,     // 0
        GoRight,    // 1
        GoUp,       // 2
        GoDown      // 3
    }

    ActionChoices choice = ActionChoices.GoDown;
    

    // 因为ABI中没有枚举类型，所以这里的"getChoice() returns(ActionChoices)"函数签名
    // 会被自动转换成"getChoice() returns(uint8)"
    function getChoice() public view returns (ActionChoices) {
        return choice;
    }

    function enumToUint(ActionChoices c) public pure returns(uint) {
        return uint(c);
    }
    function uintToEnum(uint i) public pure returns(ActionChoices) {
        return ActionChoices(i);
    }
}