# UniversityToken ERC-20 Token

## Usage

This project represents the implementation of an ERC-20 token named "UniversityToken" using the Ethereum blockchain. The token is created following the ERC-20 standard and includes additional functions for retrieving transaction information.

### Deployment

1. Deploy the contract using Remix and Metamask on a testnet Sepolia
2. Interact with the deployed contract using Remix and Metamask to call its functions.

## Demo Screenshots

![Снимок экрана 2024-01-21 161330](https://github.com/kabibollaa/blockchain/assets/147371746/a585de5e-a431-4229-b082-997af2c9605a)
*Sending Transaction to MetaMask*

![Снимок экрана 2024-01-21 161330](https://github.com/kabibollaa/blockchain/assets/147371746/2a2309f6-b8d3-4465-8bc5-5321ac657590)
*Functions*

## Examples

### Retrieve Latest Transaction Timestamp

```solidity
// Example Solidity code to retrieve the latest transaction timestamp
string public latestTimestamp;

function updateLatestTimestamp() public {
    latestTimestamp = getLatestTransactionTimestamp();
}
