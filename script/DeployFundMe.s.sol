//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import {FundMe} from "../src/FundMe.sol";
import {Script} from "forge-std/Script.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        //Before startBroadcast -> not a "real" transaction
        HelperConfig helperConfig = new HelperConfig();

        //After startBroadcast -> "real" transaction
        vm.startBroadcast();
        FundMe fundMe = new FundMe(helperConfig.getActiveNetworkPriceFeed());
        vm.stopBroadcast();
        return fundMe;
    }
}
