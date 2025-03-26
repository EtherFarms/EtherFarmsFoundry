// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {EtherFarmsMarketplace} from "../src/EtherFarmsMarketplace.sol";

// 0x55344BFBCE57e185a7a3AA64f24C19C679bac555
contract CounterScript is Script {
  EtherFarmsMarketplace public etherFarmsMarketplace;

  function setUp() public {}

  function run() public {
    vm.startBroadcast();

    etherFarmsMarketplace = new EtherFarmsMarketplace(0xbe1a9114E788e5054276E3Dc4Fc5E29b700F7baa);

    vm.stopBroadcast();
  }
}
