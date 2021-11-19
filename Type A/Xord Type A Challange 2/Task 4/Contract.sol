// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

//This contracts inherets from openzellelin libraries.
contract task4 is ERC1155, Ownable{
    uint256 public constant sha = 0;
    uint256 public constant rub = 1;

//The constructor initializes the initial mint(meaning to store token in the owner's account)   
    constructor() ERC1155(""){
        _mint(msg.sender, sha, 10, "I'm sending this to myself");
        _mint(msg.sender, rub, 20, "I'm sending this to myself");
    }

//This function allows only the owner to create more NFTs.
    function mint(address _account, uint256 _id, uint256 _amount) public onlyOwner {
        _mint(_account, _id, _amount, "");
    }
}