// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract UniversityToken is ERC20 {
    using Strings for uint256;

    address public admin;

    constructor() ERC20("<AITU_Assylzhan>", "UNI") {
        admin = msg.sender;
        _mint(msg.sender, 2000 * (10 ** uint256(decimals())));
    }

    // Function to return the block timestamp of the latest transaction in a human-readable format
    function getLatestTransactionTimestamp() public view returns (string memory) {
        uint256 latestBlockTimestamp = block.timestamp;
        return formatTimestamp(latestBlockTimestamp);
    }

    // Function to retrieve the address of the transaction sender
    function getTransactionSender() public view returns (address) {
        return msg.sender;
    }

    // Function to retrieve the address of the transaction receiver
    function getTransactionReceiver() public view returns (address) {
        return address(this);
    }

    // Helper function to format timestamp into a human-readable format
    function formatTimestamp(uint256 timestamp) internal pure returns (string memory) {
        return timestamp.toString();
    }
}
