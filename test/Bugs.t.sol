// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Bugs.sol";

contract BugsTest is Test {

  Bugs bugs;
  address owner = address(0x1223);
  address alice = address(0x1889);
  address bob = address(0x1778);

  function setUp() public {
      vm.startPrank(owner);
      bugs = new Bugs();
      vm.stopPrank();
  }

  function testMint() public {
      vm.startPrank(alice);
      vm.deal(alice, 2 ether);
      bugs.mint{value: 1 ether}();
      vm.stopPrank();
      assertEq(bugs.balanceOf(alice), 1);
  }

}

