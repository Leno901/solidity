# MyToken - Basic Token Smart Contract

## Overview

This Solidity smart contract, named "MyToken," represents a basic token with minting and burning functions. It allows you to create and destroy tokens, and it keeps track of token balances for different addresses.

## Token Details

- **Token Name**: MyToken (set during deployment)
- **Token Symbol**: MYT (set during deployment)
- **Initial Total Supply**: 0 (set during deployment)

## Usage

You can deploy and interact with this contract on an Ethereum network. Below are the primary functionalities provided by the contract:

### Minting Tokens

The `mint` function allows the contract owner to create and allocate tokens to a specific address. To mint new tokens, use the following method:

```solidity
function mint(address _to, uint256 _value) public
