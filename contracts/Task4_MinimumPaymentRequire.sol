// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task4_MinimumPaymentRequire {
    uint256 public constant MIN_PAYMENT = 0.01 ether;
    uint256 public totalCollected;

    function payWithMinimum() external payable {
        require(msg.value >= MIN_PAYMENT, "Payment is below minimum");
        totalCollected += msg.value;
    }
}
