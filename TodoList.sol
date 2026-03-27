// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TodoList {
    struct Task {
        string description;
        bool completed;
    }
    Task[] public tasks;

    function addTask(string memory description) public {
        tasks.push(Task(description, false));
    }

    function toggleTask(uint256 index) public {
        tasks[index].completed = !tasks[index].completed;
    }

    function getTaskCount() public view returns (uint256) {
        return tasks.length;
    }
}
