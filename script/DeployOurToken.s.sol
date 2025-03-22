//SPDX-License-Indentifier: MIT

pragma solidity ^0.8.18;

import {OurToken} from "../src/OurToken.sol";
import {Script} from "forge-std/Script.sol";

contract DeployOurToken is Script {

    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function run() external {
        vm.startBroadcast();
        new OurToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}