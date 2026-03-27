// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CounterWithEvent {
    uint256 public count;
    event CountChanged(uint256 newCount);

    function increment() public {
        count += 1;
        emit CountChanged(count);
    }
}
