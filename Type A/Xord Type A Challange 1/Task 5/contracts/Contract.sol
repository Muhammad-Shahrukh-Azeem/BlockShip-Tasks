// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

contract Task5{

    uint timeLimit;

    mapping(address => uint) private etherStorage;

    function withdraw(address payable _address, uint myEther) external payable returns(uint) {
    //This will set a timer to withdraw ether.
        if(timeLimit > 1 days) {
            _address.transfer(myEther);
            }
    return etherStorage[msg.sender];
    }

    //This Function will save Ether to our mapping.
    function addingEther() public payable returns(uint){
        etherStorage[msg.sender] = etherStorage[msg.sender] + msg.value;
        return etherStorage[msg.sender];
    }
}
