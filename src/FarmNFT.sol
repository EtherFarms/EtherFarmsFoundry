// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {ERC721} from "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {ERC721URIStorage} from "lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract EtherFarmsNFT is ERC721URIStorage {
  uint256 private _currentTokenId;

  constructor() ERC721("EtherFarms NFT", "EFT") {}

  function mintNFT(string memory tokenURI) public returns (uint) {
    _currentTokenId++;

    _mint(msg.sender, _currentTokenId);
    _setTokenURI(_currentTokenId, tokenURI);  
    return _currentTokenId;
  }
}