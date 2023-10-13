# Mars Energy Token Smart Contract

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

The `MarsEnergyToken` smart contract is a simple example of an Ethereum-based token with basic functionalities to mint and burn tokens. It is designed for educational purposes and can be used as a starting point for creating your own token contracts.

## Table of Contents

- [Mars Energy Token Smart Contract](#mars-energy-token-smart-contract)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Getting Started](#getting-started)
  - [Contract Details](#contract-details)
  - [Functions](#functions)
    - [Mint Function](#mint-function)
    - [Burn Function](#burn-function)

## Overview

The `MarsEnergyToken` contract provides a minimalistic ERC-20-like token implementation with the following features:

- Token name: "Mars Energy Token"
- Token Symbol: "MET"
- Total supply management
- Minting tokens
- Burning tokens

## Getting Started

To deploy and interact with the `MarsEnergyToken` contract, you can follow these steps:

1. **Clone the Repository**: Clone this repository to your local environment.

2. **Compile and Deploy**: Compile the contract using a Solidity compiler and deploy it to an Ethereum network of your choice. You can use development tools like Remix.

## Contract Details

- **Solidity Version**: 0.8.18
- **License**: MIT

## Functions

### Mint Function

- **Description**: Mint new tokens and add them to the total supply and the minter's balance.
- **Parameters**:
  - `_minter` (address): The address of the account minting the tokens.
  - `_value` (uint): The amount/number of tokens to mint.

### Burn Function

- **Description**: Burn a specific number of tokens from the sender's balance, reducing the total supply.
- **Parameters**:
- `_burner` (address): The address of the account burning the tokens.
- `_value` (uint): The amount/number of tokens to burn.
