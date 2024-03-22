# Proveable Random Raffle Contract //////////////////

## Description
This contract implements a sample raffle using Chainlink VRF Version 2. Participants can enter the raffle by paying an entrance fee, and a random winner is chosen periodically.

## Layout of Functions
- Constructor
- External
- Public
- Internal
- Private
- View & Pure Functions

## Contract Details
- **Version:** Solidity ^0.8.19
- **License:** MIT

## Imports
The contract imports necessary interfaces and libraries from the Chainlink Brownie contracts.

## Errors
The contract defines custom errors for various exceptional scenarios.

## Interfaces, Libraries, Contracts
The contract interfaces with VRFCoordinatorV2Interface, VRFConsumerBaseV2, and AutomationCompatibleInterface.

## Type Declarations
The contract defines an enum `RaffleState` to represent the state of the raffle.

## State Variables
- Chainlink VRF variables
- Lottery variables

## Events
- `RequestedRaffleWinner`: emitted when a random winner is requested.
- `RaffleEnter`: emitted when a participant enters the raffle.
- `WinnerPicked`: emitted when a winner is picked.

## Functions
- **Constructor:** Initializes the contract with required parameters and sets initial state.
- **enterRaffle:** Allows participants to enter the raffle by paying the entrance fee.
- **checkUpkeep:** Checks if the upkeep of the raffle is needed.
- **performUpkeep:** Initiates Chainlink VRF call to get a random winner.
- **fulfillRandomWords:** Called by Chainlink VRF node to determine the winner and distribute the prize.

## Getter Functions
Provides public access to various state variables and contract parameters.

