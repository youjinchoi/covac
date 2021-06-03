const Covac = artifacts.require("Covac");

module.exports = function(deployer) {
  deployer.deploy(Covac);
};
