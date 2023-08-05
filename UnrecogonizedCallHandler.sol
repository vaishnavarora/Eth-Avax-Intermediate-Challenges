// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EtherReceiver {
    address payable owner;

    constructor() public {
        owner = msg.sender;
    }

    fallback() external payable {
        require(msg.value > 0, "No ether sent");
    }

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        owner.transfer(address(this).balance);
    }

    recieve() external payable {
        revert("Unrecognized call");
    }
}
