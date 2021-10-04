// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/AppsusUK/NFT-Collection-Deploy-Guide/blob/main/contracts/ERC721Tradable.sol";

contract MyNftName is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        ERC721Tradable("MyNFTName", "SYMBOL", _proxyRegistryAddress, 5)
    {
        mintMultipleTo(msg.sender, 5);
    }

    function baseTokenURI() override public pure returns (string memory) {
        return "ipfs://ADD_HASH_HERE/";
    }

}