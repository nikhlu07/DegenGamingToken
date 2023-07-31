# Degen Gaming Token (DGN)
The Degen Gaming Token (DGN) is a decentralized digital asset based on the Ethereum blockchain, following the ERC20 standard.

## Description
The Degen Gaming Token (DGN) is an ERC20 token designed for gaming platforms, offering in-game rewards and the ability to redeem tokens for exclusive in-game items. The token facilitates a decentralized and transparent gaming ecosystem, where players can be incentivized for their engagement and skill in various games. The contract includes minting, transferring, burning, and redeeming functionalities, allowing the platform owner to reward players with new tokens and granting players the freedom to trade, use, or redeem their earned tokens.

## Getting Started
Installing
To use the Degen Gaming Token contract, you can download or clone the repository containing the smart contract code.

### Executing Program
Open the smart contract file (DegenToken.sol) in a Solidity development environment (e.g., Remix, Truffle, or Hardhat).

Compile the contract to ensure there are no compilation errors.

Deploy the contract on the Avalanche Fuji Testnet (or other supported networks) using your preferred deployment tool.

After deployment, note the contract address for interaction.

### Interacting with the Contract
Once the Degen Gaming Token contract is deployed, you can interact with it using various methods:
Minting New Tokens: Only the contract owner can mint new tokens. Call the mint function with the desired recipient's address and the amount of tokens to be minted as arguments. This function will create new tokens and distribute them to the specified address.
Transferring Tokens: Token holders can transfer their tokens to other addresses using the transfer function. Provide the recipient's address and the amount of tokens to be transferred as arguments to this function.
Burning Tokens: Any token holder can burn their own tokens if they no longer need them. Use the burn function with the amount of tokens to be burned as an argument. The tokens will be permanently removed from the sender's balance.
Redeeming Tokens: Token holders can redeem their tokens for in-game items or rewards by calling the redeem function with the amount of tokens to be redeemed as an argument. The function will burn the specified amount of tokens from the sender's balance.
Checking Token Balance: You can check the token balance of any address by calling the checkBalance function with the address as an argument. This function returns the balance of the specified address.

### Explanation of Functions
constructor: The constructor function is executed when the contract is deployed. It initializes the ERC20 token with the name "Degen" and the symbol "DGN".
mint: This function allows the contract owner to mint new tokens. Only the contract owner can call this function and distribute new tokens to specific addresses.
redeem: The redeem function allows token holders to burn a specified amount of their tokens, essentially redeeming them for in-game items or rewards.
transfer: The transfer function is inherited from the ERC20 contract and allows token holders to transfer their tokens to other addresses.
burn: Token holders can use the burn function to burn a specified amount of their own tokens, permanently removing them from their balance.
checkBalance: The checkBalance function allows anyone to query the token balance of any address by providing the address as an argument. It returns the balance of the specified address.

Authors
Nikhil Sharma
Contributors are welcome! Feel free to submit pull requests or collaborate on the project to improve the functionality or add new features.

