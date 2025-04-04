// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract FarmToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("FarmToken", "FMT") {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}
