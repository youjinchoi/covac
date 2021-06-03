pragma solidity ^0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Covac.sol";

contract TestCovac {

  function testInitialBalanceUsingDeployedContract() public {
    Covac covac = Covac(DeployedAddresses.Covac());

    uint expected = 9000000000000000000000;

    Assert.equal(covac.balanceOf(tx.origin), expected, "Owner should have 9000000000000000000000 Covac initially");
  }

}
