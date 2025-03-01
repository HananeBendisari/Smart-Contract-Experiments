// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title DNAHashGenerator
 * @dev Stores a unique DNA hash generated from an input string and the user's address.
 * Only the contract owner can register DNA records.
 */

// This is a forced update to sync with GitHub

contract DNAHashGenerator is Ownable {
        constructor() Ownable(msg.sender) {}

    // Mapping to store DNA records (address => hash)
    mapping(address => bytes32) private dnaRecords;

    /// @notice Event emitted when a new DNA hash is stored.
    /// @param user The address that generated the DNA.
    /// @param dnaHash The generated DNA hash.
    event DNAStored(address indexed user, bytes32 dnaHash);

    /**
     * @notice Generates a unique DNA hash for the sender.
     * @dev Uses keccak256 hashing with the provided input and sender's address.
     * @param input The string input used to generate the DNA hash.
     */

    function generateDNA(string memory input) public onlyOwner {
        require(dnaRecords[msg.sender] == bytes32(0), "DNA already exists for this address");
        bytes32 dnaHash = keccak256(abi.encodePacked(input, msg.sender));
        dnaRecords[msg.sender] = dnaHash;
        emit DNAStored(msg.sender, dnaHash);
}

    /**
     * @notice Retrieves the stored DNA hash of a specific user.
     * @param user The address of the user whose DNA record is being requested.
     * @return The stored DNA hash.
     */
    function getDNARecord(address user) public view returns (bytes32) {
        require(dnaRecords[user] != bytes32(0), "No DNA record found for this address");
        return dnaRecords[user];
}

    /**
     * @notice Retrieves the stored DNA hash of the caller.
     * @return The stored DNA hash of the caller.
     */
    function getMyDNARecord() public view returns (bytes32) {
        return getDNARecord(msg.sender);

}

    /**
     * @notice Verifies if a given input matches the stored DNA hash for the sender.
     * @param input The input string to verify.
     * @return A boolean indicating whether the input matches the stored hash.
     */
    function verifyDNA(string memory input) public view returns (bool) {
        return keccak256(abi.encodePacked(input, msg.sender)) == dnaRecords[msg.sender];
    }

    /**
     * @dev Deletes a DNA record (only callable by the owner).
     * @param user The address of the user whose DNA record should be deleted.
     */
    function deleteDNARecord(address user) public onlyOwner {
        require(dnaRecords[user] != bytes32(0), "No DNA record found for this address");
        delete dnaRecords[user];
}
   
}

