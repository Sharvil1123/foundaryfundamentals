// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns(SimpleStorage){
        vm.startBroadcast(); // start of transcaction
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast(); // end of transcaction
        return simpleStorage;
    } // run command forge script "script location" to deploy the script
}

// forge script [script location] --rpc-url [rpc url] --broadcast --private-key [pvt key] - command to deploy on local blockchain.