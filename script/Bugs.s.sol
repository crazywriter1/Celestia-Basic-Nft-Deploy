// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {Bugs} from "src/Bugs.sol";

contract BugsScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new Bugs();
        vm.stopBroadcast();
    }
}
