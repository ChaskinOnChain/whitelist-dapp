// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/WhiteList.sol";

contract CounterTest is Test {
    WhiteList public whiteList;

    address public a = address(0x1);
    address public b = address(0x2);
    address public c = address(0x3);
    address public d = address(0x4);
    address public f = address(0x5);
    address public g = address(0x6);
    address public h = address(0x7);
    address public i = address(0x8);
    address public j = address(0x9);
    address public k = address(0x10);
    address public l = address(0x11);

    function setUp() public {
        whiteList = new WhiteList(10);
    }

    function testSetUp() public {
        assertEq(whiteList.maxWhiteListedAddresses(), 10);
    }

    function testAddWhiteAddress() public {
        vm.prank(a);
        whiteList.addAddressToWhitelist();
        assertEq(whiteList.numAddressesWhitelisted(), 1);
        assertEq(whiteList.whitelistedAddresses(a), true);
    }

    function testCantAddToWhiteListTwice() public {
        vm.startPrank(a);
        whiteList.addAddressToWhitelist();
        vm.expectRevert(WhiteList.AlreadyWhiteListed.selector);
        whiteList.addAddressToWhitelist();
    }

    function testRevertIfMoreThanTen() public {
        vm.prank(a);
        whiteList.addAddressToWhitelist();
        vm.prank(b);
        whiteList.addAddressToWhitelist();
        vm.prank(c);
        whiteList.addAddressToWhitelist();
        vm.prank(d);
        whiteList.addAddressToWhitelist();
        vm.prank(l);
        whiteList.addAddressToWhitelist();
        vm.prank(f);
        whiteList.addAddressToWhitelist();
        vm.prank(g);
        whiteList.addAddressToWhitelist();
        vm.prank(h);
        whiteList.addAddressToWhitelist();
        vm.prank(i);
        whiteList.addAddressToWhitelist();
        vm.prank(j);
        whiteList.addAddressToWhitelist();
        vm.prank(k);
        vm.expectRevert(WhiteList.WhiteListMaxedOut.selector);
        whiteList.addAddressToWhitelist();
    }
}
