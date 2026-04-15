// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task2_PayableFunction {
    uint256 public totalCollected;

    function payForQueue() external payable {
        require(msg.value > 0, "Payment must be greater than 0");
        totalCollected += msg.value;
    }
}
