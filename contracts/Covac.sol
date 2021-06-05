// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract Covac is ERC20Upgradeable {
	function initialize() initializer public {
		__ERC20_init("Covid Vaccine", "COVAC");
		uint totalSupply = 19000000000 * 10 ** 18;	// fixed total supply - 19 billion
		_mint(msg.sender, totalSupply);
		_burn(msg.sender, totalSupply / 10);	// 10% burn to celebrate 10% global vaccination hit on May 25th, 2021
	}
}