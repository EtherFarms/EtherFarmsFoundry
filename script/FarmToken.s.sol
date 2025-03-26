// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FarmToken} from "../src/FarmToken.sol";

// 0xbe1a9114E788e5054276E3Dc4Fc5E29b700F7baa
contract CounterScript is Script {
  FarmToken public farmToken;

  function setUp() public {}

  function run() public {
    vm.startBroadcast();

    farmToken = new FarmToken(1000000);

    vm.stopBroadcast();
  }
}
