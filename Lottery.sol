// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Lottery {
    address[] public participants;

    function enter() public {
        participants.push(msg.sender);
    }

    function getParticipantCount() public view returns (uint256) {
        return participants.length;
    }
}
