// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract ArrayManager {
    uint256[] public numbers;

    function addNumber(uint256 num) public {
        numbers.push(num);
    }

    function getLength() public view returns (uint256) {
        return numbers.length;
    }
}
