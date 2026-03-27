// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleNFT {
    uint256 public tokenCounter;

    event Minted(address owner, uint256 tokenId);

    function mint() public returns (uint256) {
        tokenCounter += 1;
        emit Minted(msg.sender, tokenCounter);
        return tokenCounter;
    }
}
