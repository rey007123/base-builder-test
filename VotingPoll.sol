// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VotingPoll {
    mapping(string => uint256) public votes;
    string[] public options;

    function addOption(string memory option) public {
        options.push(option);
    }

    function vote(string memory option) public {
        votes[option] += 1;
    }

    function getOptionsCount() public view returns (uint256) {
        return options.length;
    }
}
