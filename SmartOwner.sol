/*
Write a smart contract that allows only the owner to access and call all the functions of the contract.
Hint: use modifiers to restrict access
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract OwnerOnly {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid owner address");
        owner = newOwner;
    }

    function someFunction() public onlyOwner {
        // Function logic here
    }

    function anotherFunction() public onlyOwner {
        // Function logic here
    }

    // We can add more functions as needed, all restricted to the owner only
}
