## Foundry Fund Me

A minimal, production-style smart contract project to learn **Foundry**, **Chainlink Price Feeds**, and best practices in modern Solidity development.

## About

This project is a simplified version of a funding smart contract (inspired by crowdfunding). It uses **Chainlink oracles** to convert ETH to USD and enforces a minimum contribution based on real-world value.  

The goal is to practice:
- Writing gas-efficient contracts with Solidity
- Using Chainlink price feeds
- Testing with Foundry's `forge`
- Script-based deployment and interaction
- Building with clean folder structures and modularity

## Getting Started

### Prerequisites

- Git
- [Foundry](https://book.getfoundry.sh/getting-started/installation) installed
- A wallet/private key (for deployment)
- RPC provider (e.g., [Alchemy](https://www.alchemy.com/) or [Infura](https://infura.io/))

---

## Installation

### 1. **Install Foundry**

```bash
curl -L https://foundry.paradigm.xyz 
foundryup
```
### 2. **Clone the Repo**

``` bash 
git clone https://github.com/nwachee/randomSolids.git
cd foundry-fundMe
```

## Usage

### Build

```bash
 forge build
```
### Deploy to Testnet or Mainnet

#### 1. **Setup environment variables**

Create a ```.env``` file in the root folder:

```bash
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/YOUR_API_KEY
PRIVATE_KEY=your_private_key_without_0x
ETHERSCAN_API_KEY=your_etherscan_api_key
```

**NOTE: FOR DEVELOPMENT, PLEASE USE A PRIVATE KEY THAT DOESN'T HAVE ANY REAL FUNDS ASSOCIATED WITH IT.**

#### 2. **Deploy**
```bash
forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast  --verify
```

### Test
Run Local Unit Tests: 
```bash
 forge test -vvv
```

### Format
To run code formatting:

```bash
 forge fmt
```

### Gas Snapshots
Estimate how much gas things cost by running

```bash
 forge snapshot
```

### Anvil

```shell
bash anvil
```

### Cast

```bash
 cast <subcommand>
```

### Help

```bash
 forge --help
 anvil --help
 cast --help
```
