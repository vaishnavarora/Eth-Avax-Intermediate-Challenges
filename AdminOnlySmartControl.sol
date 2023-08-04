/*
Write a smart contract that allows only the admin to access and call all the functions of the contract.
Hint: use modifiers to restrict access
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract AdminOnly {
    address public admin;

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function changeAdmin(address newAdmin) public onlyAdmin {
        require(newAdmin != address(0), "Invalid admin address");
        admin = newAdmin;
    }

    function someFunction() public onlyAdmin {
        // Function logic here
    }

    function anotherFunction() public onlyAdmin {
        // Function logic here
    }

    // We can add more functions as needed, all restricted to the admin only
}
