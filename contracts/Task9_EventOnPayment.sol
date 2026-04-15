// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task9_EventOnPayment {
    event PaymentDone(address indexed payer, uint256 amount, uint256 time);

    function payAndEmit() external payable {
        require(msg.value > 0, "No payment sent");
        emit PaymentDone(msg.sender, msg.value, block.timestamp);
    }
}
