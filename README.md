# About

This is a minimal project allowing users to fund the contract owner with donations. The smart contract accepts ETH as donations, denominated in USD. Donations have a minimal USD value, otherwise they are rejected. The value is priced using a Chainlink price feed, and the smart contract keeps track of doners in case they are to be rewarded in the future.

# Getting Started

## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`


## Quickstart

```
git clone https://github.com/SuarezNico/foundry-fund-me
cd foundry-fund-me-cu
make
```

# Usage

## Deploy

```
forge script script/DeployFundMe.s.sol
```

## Testing

1. Unit
2. Integration
3. Forked
4. Staging


```
forge test
```

or 

```
// Only run test functions matching the specified regex pattern.

"forge test -m testFunctionName" is deprecated. Please use 

forge test --match-test testFunctionName
```