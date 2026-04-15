// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task8_OwnerOnlyWithdraw {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function deposit() external payable {
        require(msg.value > 0, "No payment sent");
    }

    function ownerWithdraw(uint256 _amount) external onlyOwner {
        require(_amount <= address(this).balance, "Insufficient contract balance");
        (bool success, ) = payable(owner).call{value: _amount}("");
        require(success, "Withdraw failed");
    }
}
