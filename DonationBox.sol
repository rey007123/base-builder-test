// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DonationBox {
    uint256 public totalDonations;

    function donate() public payable {
        totalDonations += msg.value;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
