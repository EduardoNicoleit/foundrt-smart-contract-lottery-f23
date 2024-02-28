// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

// SPDX-LIcense-Identifier: MIT

// aa
pragma solidity ^0.8.18;

/**
 * @title A sample Raffle contract
 * @author Eduardo Nicoleit (powered by Cyfrin)
 * @notice This contract is for creating a sample raffle
 * @dev IMplements Chainlink VRFv2
 */

contract Raffle {
    error NotEnoughEthSent();

    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() external payable {
        // require(msg.value >= i_entranceFee, "Not enough ETH sent"); -> more costly
        if (msg.value < i_entranceFee) {
            revert NotEnoughEthSent();
        }
    }

    function pickWinner() public {}

    //** Getter Function */

    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}
