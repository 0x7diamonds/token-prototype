// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Token} from "../src/Token.sol";

contract Deploy is Script {
    function run() external {
        vm.startBroadcast();
        Token bao = new Token("Bao's Token", "BAO", 1_000_000 ether); // 1M tokens
        Token loc = new Token("Loc's Token", "LOC", 1_000_000 ether); // 1M tokens
        console.log("Bao's Token deployed to:", address(bao));
        console.log("Loc's Token deployed to:", address(loc));
        vm.stopBroadcast();
    }
}