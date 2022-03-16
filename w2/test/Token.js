const { expect } = require("chai");

describe("Transactions", function () {

  it("test", async function() {
    const [owner] = await ethers.getSigners();

    const Bank = await ethers.getContractFactory("Bank");

    const hardhatToken = await Bank.deploy();
   
    await hardhatToken.deployed();
    hardhatToken.deposit(200);

    //expect(await hardhatToken.count()).to.equal(10);
    
  });
});