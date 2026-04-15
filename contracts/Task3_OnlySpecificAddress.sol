// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task3_OnlySpecificAddress {
    address public immutable allowedPayer;
    uint256 public acceptedAmount;

    constructor(address _allowedPayer) {
        require(_allowedPayer != address(0), "Zero address not allowed");
        allowedPayer = _allowedPayer;
    }

    function payFromAllowedAddress() external payable {
        require(msg.sender == allowedPayer, "Sender is not allowed");
        require(msg.value > 0, "No payment sent");
        acceptedAmount += msg.value;
    }
}
