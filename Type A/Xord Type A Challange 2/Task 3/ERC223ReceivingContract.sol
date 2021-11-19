// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

interface ERC223ReceivingContract { 
    function tokenFallback(address _from, uint _value, bytes memory _data) external;
}