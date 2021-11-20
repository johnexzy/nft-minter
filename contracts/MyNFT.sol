// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import 'hardhat/console.sol';

contract MyNFT is ERC721URIStorage {
    

    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    constructor() ERC721 ("OJONFT", "OJO"){
        console.log("My awesome NFT collection");
    }

    function makeAnNFT() public {
        uint256 tokenId = _tokenIds.current();
        
        // Actually mint the NFT to the sender using msg.sender.
        _safeMint(msg.sender, tokenId);

        // set the NFT data
        _setTokenURI(tokenId, "Hello John");

        // incrementing the counter for when NFT is minted
        _tokenIds.increment();


    }
}
