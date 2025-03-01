# 📜 DNAHashGenerator - Smart Contract Documentation

## 📌 About the Contract
The **DNAHashGenerator** is a Solidity smart contract that allows the contract owner to generate and store unique DNA hashes for users based on input strings. Users can retrieve their stored hashes and verify them.

---

## 🚀 **Contract Deployment Details**

📍 **Contract Address (Sepolia Testnet):** `0x4111c3cB4d4794A2C6d17690D4e467F327ae630b`
🔗 **[View on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x4111c3cB4d4794A2C6d17690D4e467F327ae630b)`**

---

## 🛠 **Features & Functionality**

### **🔹 Core Functions:**
- `generateDNA(string input)`: Generates a unique DNA hash using `keccak256`.
- `getDNARecord(address user)`: Retrieves the stored DNA hash of a specific user.
- `getMyDNARecord()`: Retrieves the stored DNA hash of the caller.
- `verifyDNA(string input)`: Checks if the input matches the stored DNA hash.
- `deleteDNARecord(address user)`: Allows the contract owner to delete a stored DNA record.

### **🔹 Security Enhancements:**
- **Prevents duplicate DNA generation** for the same address.
- **Only the contract owner can delete DNA records.**
- **Gas optimized** by using efficient storage and calldata usage.

---

## 🛠 **How to Interact with the Contract**

### **🔹 Using Remix:**
1. Open [Remix Ethereum](https://remix.ethereum.org/).
2. Select `Injected Provider - MetaMask` in "Deploy & Run Transactions".
3. Paste the contract address: `0x4111c3cB4d4794A2C6d17690D4e467F327ae630b`.
4. Expand the deployed contract and use the available functions.

### **🔹 Using Etherscan:**
1. Go to [Sepolia Etherscan](https://sepolia.etherscan.io/address/0x4111c3cB4d4794A2C6d17690D4e467F327ae630b).
2. Click on "Contract" > "Write Contract".
3. Connect your MetaMask wallet and interact with the contract functions.

---

## 📢 **Next Steps**
- 🔍 **Verify contract on Etherscan** to make it publicly auditable.
- 🛠 **Deploy on a mainnet** once all testing is finalized.
- 🚀 **Build a front-end DApp** to interact with the contract easily.

---

## 📞 **Get in Touch!**
💼 **LinkedIn:** [linkedin.com/in/hanane-bendisari/](https://www.linkedin.com/in/hanane-bendisari/)  
🐙 **GitHub:** [github.com/HananeBendisari](https://github.com/HananeBendisari)  
📩 **Reach out for collaboration!**


