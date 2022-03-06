require("@nomiclabs/hardhat-waffle");

const ALCHEMY_API_KEY = "0DhqY_f4gFGNqZRs80aX3tl1MnCTYwv0";
const ROPSTEN_PRIVATE_KEY = "c5b60d364ce49f92454c8ee99ba8ce48b12eb1691d0157bfb857c886c6957095";


/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.12",
  networks: {
    ropsten: {
      url: `https://eth-ropsten.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts: [`0x${ROPSTEN_PRIVATE_KEY}`]
    }
  }
};

