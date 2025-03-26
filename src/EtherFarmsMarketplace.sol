// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {ReentrancyGuard} from "lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "lib/forge-std/src/interfaces/IERC20.sol";

contract EtherFarmsMarketplace is ReentrancyGuard {
  error EtherFarmsMarketplace__AddressLessThan1DayForEtherFarmsToken(address airdropper);

  event EtherFarmsTokenAirdrop(address airdropper);

  mapping(address => uint256) addressToLastGetEtherFarmsToken;
  IERC20 public etherFarmsToken;

  constructor(address etherFarmsTokenAddress) {
    etherFarmsToken = IERC20(etherFarmsTokenAddress);
  }

  function get100EtherFarmsToken() public {
    if (block.timestamp - addressToLastGetEtherFarmsToken[msg.sender] < 1 days) {
      revert EtherFarmsMarketplace__AddressLessThan1DayForEtherFarmsToken(msg.sender);
    }
    addressToLastGetEtherFarmsToken[msg.sender] = block.timestamp;
    etherFarmsToken.transfer(msg.sender, 100 ether);
    emit EtherFarmsTokenAirdrop(msg.sender);
  }
}