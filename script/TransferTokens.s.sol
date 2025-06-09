// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Token} from "../src/Token.sol"; // Adjust if using SampleToken

contract TransferTokens is Script {
    function run() external {
        address locToken = vm.envAddress("LOC_TOKEN");
        address baoToken = vm.envAddress("BAO_TOKEN");
        address recipient = vm.envAddress("LOC_WALLET"); // Replace with your swap wallet address

        vm.startBroadcast();
        Token(locToken).transfer(recipient, 1000 ether);
        Token(baoToken).transfer(recipient, 1000 ether); // Transfer 1000 TKNA
        vm.stopBroadcast();
    }
}