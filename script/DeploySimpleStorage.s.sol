// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

//to tell foundy that this is a script, import Script.sol from the forge standard lib
import {Script} from "lib/forge-std/src/Script.sol";
//our script has to know about the contract we wanna deploy
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    //inside every script contract, we need a main function, which is run. This is the function that is gonna be called when we deploy
    function run() external returns (SimpleStorage) {
        //vm is a special keyword in the forge standard lib
        //this says that everything after this line until vm.stopBroadcast should be sent and to RPC and deploy
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
