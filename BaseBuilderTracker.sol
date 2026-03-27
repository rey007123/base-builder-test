// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseBuilderTracker {
    string public builderName = "Base Builder";
    uint256 public contractsDeployed;

    function recordDeployment() public {
        contractsDeployed += 1;
    }

    function getStats() public view returns (string memory, uint256) {
        return (builderName, contractsDeployed);
    }
}
