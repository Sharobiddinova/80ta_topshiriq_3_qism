// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task7_MappingBalances {
    mapping(address => uint256) public userBalances;

    function deposit() external payable {
        require(msg.value > 0, "No payment sent");
        userBalances[msg.sender] += msg.value;
    }

    function myBalance() external view returns (uint256) {
        return userBalances[msg.sender];
    }
}
