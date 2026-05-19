// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyToken {

    string public name = "My Base Token";
    string public symbol = "MBT";
    uint256 public totalSupply = 1000000;

    address public owner;

    mapping(address => uint256) public balanceOf;

    constructor() {
        owner = msg.sender;
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address to, uint256 amount) public returns (bool) {

        require(balanceOf[msg.sender] >= amount, "Not enough balance");

        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;

        return true;
    }
}
