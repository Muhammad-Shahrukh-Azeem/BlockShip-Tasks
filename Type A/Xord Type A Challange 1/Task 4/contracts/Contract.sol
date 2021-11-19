// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

contract Task4{

   uint myEther;
   //This function will be able to send Ether.
   function sendMyEther(address payable _address, uint _myEther) external payable {
         _address.transfer(_myEther);      
   }
   
   //This function will withDraw ether to my address;
  function withdraw() external {
    address payable me;
    me.transfer(address(this).balance);
  }

   fallback() external payable {}
   
   receive() external payable {}
}
