// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/fundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        HelperConfig helperConfig = new HelperConfig();
        address ethUsdPriceFeedAddress = helperConfig.activeNetworkConfig();
        vm.startBroadcast();
        FundMe fundme = new FundMe(ethUsdPriceFeedAddress);
        vm.stopBroadcast();
        return fundme;
    }
}
