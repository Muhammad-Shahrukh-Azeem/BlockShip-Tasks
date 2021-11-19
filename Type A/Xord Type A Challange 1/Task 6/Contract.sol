// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

//This contract will sort the the addresses before running the hash so it wont matter which address comes first. 
contract Task6{
    function callsha256(address _address1, address _address2) public pure returns(bytes32 result){  
      require(_address1 != _address2);
      (address addressA, address addressB) = _address1 < _address2? (_address1, _address2) : (_address2, _address1);
      return keccak256(abi.encodePacked(addressA, addressB));
    }
}
