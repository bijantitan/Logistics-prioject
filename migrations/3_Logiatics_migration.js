const Logistics = artifacts.require("Logistics");

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(Logistics, accounts[0]);
};
