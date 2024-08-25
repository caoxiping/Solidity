// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Address {
      
        address payable addr_pay = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        address addr = addr_pay; // **隐式类型转换**
        function get_balance() public view returns(uint256) {
            return address(addr_pay).balance; //获取地址账户余额
        }

        function get_code() public view returns(bytes memory) {
            return address(this).code; //获取合约代码
        }

        function get_codehash() public view returns(bytes32) {
            return address(this).codehash; //获取合约代码的hash值
        }


}