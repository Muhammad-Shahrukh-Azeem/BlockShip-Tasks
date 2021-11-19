// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;
//Contract For Type A  challange 1

/// @author Muhammad Shahrukh Azeem
contract Task1{
//Using structs for storing information
    struct Information {
         string fullName;
         uint Balance;

}
//mapping for storing information against addresses
    mapping(address => Information) Accounts;
    address[] public BankAccounts;

//Function to save value in struct
function setInformation(string memory _fullname, uint _Balance, address _address) public {
     
    Information memory info = Information(_fullname, _Balance);  
    Accounts[_address] = info;
    BankAccounts.push(_address);
}

//Function to retrive information
function getInformation(address _address) view public returns (string memory, uint){
    return (Accounts[_address].fullName, Accounts[_address].Balance);
}
}