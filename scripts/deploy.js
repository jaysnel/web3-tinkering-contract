async function main() {
    const Web3Tinkering = await ethers.getContractFactory("Web3Tinkering");
 
    const web3_tinkering_address = await Web3Tinkering.deploy('I did it!');
    await web3_tinkering_address.deployed();
    console.log("Contract deployed to address:", web3_tinkering_address.address);
    
 }
 
 main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });