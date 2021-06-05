const { deployProxy } = require("@openzeppelin/truffle-upgrades");

const Covac = artifacts.require("Covac");

module.exports = async function (deployer) {
    await deployProxy(Covac, [], { deployer, initializer: "initialize" });
};
