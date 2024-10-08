// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract func {
        function add(uint lhs, uint rhs) public pure returns(uint) {
            return lhs + rhs;
        }
        // 仅指定 visibility
        function f1() public {}

        // 指定 visibility 和 state-mutability
        function f2() public pure {}

        // 指定 visibility 和 state-mutability
        function f3() public view {}

        // 指定 visibility 和 state-mutability，函数有一个入参
        function f4(uint a) public pure {}

        // 指定 visibility 和 state-mutability，函数有一个入参和一个返回值
        function f5(uint a) public pure returns(uint) {}

        // 指定 visibility 和 state-mutability，函数有多个入参和多个返回值
        function f6(uint a, uint b, uint c) public pure returns(uint, uint, uint) {}

       // 提供0个参数
        function foo() public {}

        // 提供1个参数
        function foo(uint a) public {}

        // 提供多个参数
        function foo(uint a,uint d,uint c) public {}

}