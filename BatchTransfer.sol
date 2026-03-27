// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BatchTransfer {
    function sendToMany(address[] memory recipients, uint256[] memory amounts) public payable {
        require(recipients.length == amounts.length, "Length mismatch");
        for (uint256 i = 0; i < recipients.length; i++) {
            payable(recipients[i]).transfer(amounts[i]);
        }
    }
}
