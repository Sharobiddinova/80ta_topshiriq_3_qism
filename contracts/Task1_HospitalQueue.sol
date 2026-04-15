// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Task1_HospitalQueue {
    struct Ticket {
        address patient;
        string fullName;
        uint256 createdAt;
        bool served;
    }

    Ticket[] public queue;

    function takeQueue(string calldata _fullName) external {
        queue.push(
            Ticket({
                patient: msg.sender,
                fullName: _fullName,
                createdAt: block.timestamp,
                served: false
            })
        );
    }

    function markAsServed(uint256 _index) external {
        require(_index < queue.length, "Invalid queue index");
        queue[_index].served = true;
    }

    function queueLength() external view returns (uint256) {
        return queue.length;
    }
}
