// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AddressBook {
    mapping(string => address) public contacts;

    function addContact(string memory name, address addr) public {
        contacts[name] = addr;
    }

    function getContact(string memory name) public view returns (address) {
        return contacts[name];
    }
}
