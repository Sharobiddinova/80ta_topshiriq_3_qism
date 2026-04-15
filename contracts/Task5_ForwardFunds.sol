// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task5_ForwardFunds {
    address public receiver;

    constructor(address _receiver) {
        require(_receiver != address(0), "Receiver cannot be zero");
        receiver = _receiver;
    }

    function payAndForward() external payable {
        require(msg.value > 0, "No payment sent");

        (bool success, ) = payable(receiver).call{value: msg.value}("");
        require(success, "Forward transfer failed");
    }
}
