// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";
import "openzeppelin-contracts/contracts/utils/Counters.sol";
contract Bugs is ERC721URIStorage, Ownable{

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    uint256 public constant MAX_SUPPLY = 28;
    uint256 public constant COST = 0 ether;
    string constant TOKEN_URI = "ipfs/bafybeiengyj6elmrtwb3sy4r6l33hsjabu3iv74nusz4xys5ie7bgtcpsu/";
    constructor() ERC721("Bugs", "BB") {}

    event Withdraw(address _to, uint256 _value);

    function mint() public payable {
        require(msg.value >= COST, "Insufficient funds");
        require(MAX_SUPPLY >= _tokenIds.current(), "You can not mint anymore");

        //increment tokenId - started at 1//
        _tokenIds.increment();
        _safeMint(msg.sender, _tokenIds.current());
        _setTokenURI(_tokenIds.current(), TOKEN_URI);
    }

    function totalSupply() public view returns (uint256) {
        return _tokenIds.current();
    }

}
