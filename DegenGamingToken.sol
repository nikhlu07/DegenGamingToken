// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    mapping(uint256 => uint256) public prizeCosts;

    constructor() ERC20("Degen", "DGN") {}

    function setPrizeCost(uint256 prizeId, uint256 cost) public onlyOwner {
        prizeCosts[prizeId] = cost;
    }

    function redeem(uint256 prizeId) public {
        require(prizeCosts[prizeId] > 0, "Invalid prize selection");
        require(balanceOf(msg.sender) >= prizeCosts[prizeId], "Your balance is not sufficient");

        uint256 cost = prizeCosts[prizeId];
        _burn(msg.sender, cost);

        // Implement your logic for redeeming the selected prize here.
        // For example, you can use events or console.log messages to indicate successful redemption.

        emit PrizeRedeemed(msg.sender, prizeId, cost);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function burn(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Your balance is not sufficient");
        _burn(msg.sender, amount);
    }

    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function getDecimals() public pure returns (uint8) {
        return 18; // Change this value to set the number of decimals for your token
    }

    function getTokenName() public pure returns (string memory) {
        return "Degen"; // Change this value to set the name of your token
    }

    event PrizeRedeemed(address indexed account, uint256 indexed prizeId, uint256 cost);
}
