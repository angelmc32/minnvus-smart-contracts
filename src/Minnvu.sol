// SPDX-License-Identifier: GNU General Public License v3.0
pragma solidity ^0.8.13;

import "openzeppelin-contracts/token/ERC721/ERC721.sol";

contract Minnvu is ERC721 {
    string public nickname;

    constructor(string memory _name, string memory _symbol, string memory _nickname) ERC721(_name,_symbol) {
        nickname = _nickname;
    }

    function setNickname(string memory _newNickname) public {
        nickname = _newNickname;
    }
}
