// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TemperatureConverter {
    function celsiusToFahrenheit(uint256 c) public pure returns (uint256) {
        return (c * 9 / 5) + 32;
    }
}
