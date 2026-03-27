// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MerkleRoot {
    bytes32 public merkleRoot;

    function setMerkleRoot(bytes32 root) public {
        merkleRoot = root;
    }
}
