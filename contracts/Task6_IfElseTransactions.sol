// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task6_IfElseTransactions {
    address public regularReceiver;
    address public urgentReceiver;

    uint256 public constant REGULAR_MIN = 0.01 ether;
    uint256 public constant URGENT_MIN = 0.02 ether;

    constructor(address _regularReceiver, address _urgentReceiver) {
        require(_regularReceiver != address(0), "Invalid regular receiver");
        require(_urgentReceiver != address(0), "Invalid urgent receiver");
        regularReceiver = _regularReceiver;
        urgentReceiver = _urgentReceiver;
    }

    function payByType(bool isUrgent) external payable {
        if (isUrgent) {
            require(msg.value >= URGENT_MIN, "Urgent payment too low");
            _send(urgentReceiver, msg.value);
        } else {
            require(msg.value >= REGULAR_MIN, "Regular payment too low");
            _send(regularReceiver, msg.value);
        }
    }

    function _send(address _to, uint256 _amount) internal {
        (bool ok, ) = payable(_to).call{value: _amount}("");
        require(ok, "Transfer failed");
    }
}
