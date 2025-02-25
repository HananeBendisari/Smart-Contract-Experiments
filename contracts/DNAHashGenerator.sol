// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DNAHashGenerator {
    // Event to emit when a new DNA hash is generated
    event NewDNA(address indexed user, bytes32 dnaHash);

    // Mapping to store generated DNA hashes
    mapping(address => bytes32) public dnaRecords;

    // Function to generate a DNA hash
    function generateDNA(string memory input) public {
        // Generate a unique DNA hash
        bytes32 dnaHash = keccak256(abi.encodePacked(input, msg.sender, block.timestamp));

        // Store the hash in the mapping
        dnaRecords[msg.sender] = dnaHash;

        // Emit event to log the new DNA generation
        emit NewDNA(msg.sender, dnaHash);
    }
}
