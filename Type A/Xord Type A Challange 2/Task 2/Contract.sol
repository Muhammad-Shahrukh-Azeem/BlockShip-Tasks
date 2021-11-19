// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

// import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
// import "@openzeppelin/contracts/drafts/Counters.sol";

contract Task2 is ERC721Full {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721Full("ShaToken", "Sha") public {
    }

    function tokens(address _to, string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();

        uint256 newTokenId = _tokenIds.current();
        _mint(_to, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        return newTokenId;
    }
}