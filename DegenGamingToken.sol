// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function redeem(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Your balance is not sufficient");
        _burn(msg.sender, amount);
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
}
