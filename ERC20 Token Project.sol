// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.2/access/Ownable.sol";

   /// Contract
contract Nobuddy is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Nobuddy", "NB") {
        _mint(msg.sender, 1000 * 10 ** 3);
    }
    /// Mint Function 
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}