// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";

import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

contract Gagan is ERC20,  Ownable {
    constructor(address initialOwner) ERC20("gagan", "G") Ownable(initialOwner) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    } 
    function burn(uint256 burn_value)public {
         _burn(msg.sender,burn_value);
    }
    function transfer(address transf_addr, uint256 transf_value)public override returns(bool) {
        _transfer(msg.sender,transf_addr, transf_value);
        return true;
    }
}
