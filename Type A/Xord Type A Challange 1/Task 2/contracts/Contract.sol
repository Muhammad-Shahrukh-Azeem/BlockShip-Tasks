// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

import "./safemath.sol";

contract Task2{
    
    using SafeMath for uint;

    function increment(uint _number) pure public returns(uint){
        return _number.add(1);
    }
}