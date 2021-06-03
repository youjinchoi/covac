// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Covac is ERC20 {
	constructor() ERC20("Covid Vaccine test", "COVAC") {
		uint totalSupply = 19000000000 * 10 ** 18;	// fixed total supply - 19 billion
		_mint(msg.sender, totalSupply);
		_burn(msg.sender, totalSupply / 10);	// 10% burn to celebrate 10% global vaccination hit on May 25th, 2021
	}
}