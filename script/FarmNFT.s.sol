// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {EtherFarmsNFT} from "../src/FarmNFT.sol";

contract CounterScript is Script {

  function run() external {
    vm.startBroadcast();

    new EtherFarmsNFT();

    vm.stopBroadcast();
  }
}
