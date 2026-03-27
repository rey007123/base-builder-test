// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StringUtils {
    function concatenate(string memory a, string memory b) public pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }

    function length(string memory str) public pure returns (uint256) {
        return bytes(str).length;
    }
}
