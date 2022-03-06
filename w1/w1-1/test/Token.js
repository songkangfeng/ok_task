const { expect } = require("chai");

describe("Transactions", function () {

  it("test", async function() {
    const [owner] = await ethers.getSigners();

    const Token = await ethers.getContractFactory("Counter");

    const hardhatToken = await Token.deploy();
   
    await hardhatToken.deployed();

    expect(await hardhatToken.count()).to.equal(10);
    
  });
});