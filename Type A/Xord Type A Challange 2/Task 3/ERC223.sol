// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

interface ERC223 {
    function transfer(address to, uint value, bytes memory data) external;
    event Transfer(address indexed from, address indexed to, uint value, bytes indexed data);
}