// SPDX-License-Identifier: MIT

import {Script} from "../lib/forge-std/src/Script.sol";

pragma solidity ^0.8.19;

contract HelperConfig is Script {
    struct NetworkConfig {
        uint64 subscriptionId;
        bytes32 gasLane;
        uint256 interval;
        uint256 entranceFee;
        uint32 callbackGasLimit;
        address vrfCoordinatorV2;
    }

    function getSepoliaEthConfig() public view returns (NetworkConfig memory) {
        return NetworkConfig(
            entranceFee: 0.01 ether,
            inte
        );
    }
}
