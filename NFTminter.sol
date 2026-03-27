// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract NFTMinter {
    uint256 public tokenId = 0;

    function mint() public returns (uint256) {
        tokenId += 1;
        return tokenId;
    }

    function totalMinted() public view returns (uint256) {
        return tokenId;
    }
}
