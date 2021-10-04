// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/AppsusUK/NFT-Collection-Deploy-Guide/blob/main/contracts/ERC721Tradable.sol";

contract MyNftName is ERC721Tradable {
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _maxSupply,
        uint256 _numTokensToMintOnDeploy,
        address _proxyRegistryAddress
        )
        ERC721Tradable(_name, _symbol, _maxSupply, _proxyRegistryAddress)
    {
        if(_numTokensToMintOnDeploy > 0){
            mintMultipleTo(msg.sender, _numTokensToMintOnDeploy);
        }
    }

    function baseTokenURI() override public pure returns (string memory) {
        return "ipfs://ADD_HASH_HERE/";
    }

}