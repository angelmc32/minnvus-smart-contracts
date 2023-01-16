// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Minnvu.sol";

contract MinnvuTest is Test {
    Minnvu public minnvu;
    string nftName = "Minnvu";
    string nftSymbol = "MINNVU";
    string initialNickname = "Max";

    function setUp() public {
        minnvu = new Minnvu(nftName, nftSymbol, initialNickname);
    }

    function testGetName() public {
        string memory registeredName = minnvu.name();
        assertEq(registeredName, nftName);
    }

    function testGetSymbol() public {
        string memory registeredSymbol = minnvu.symbol();
        assertEq(registeredSymbol, nftSymbol);
    }

    function testGetNickname() public {
        string memory registeredNickname = minnvu.nickname();
        assertEq(registeredNickname, initialNickname);
    }

    function testSetNickname(string calldata _newNickname) public {
        minnvu.setNickname(_newNickname);
        string memory registeredNickname = minnvu.nickname();
        assertEq(registeredNickname, _newNickname);
    }
}
