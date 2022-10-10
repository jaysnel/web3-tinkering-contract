async function main() {
    const Web3Tinkering = await ethers.getContractFactory("Web3Tinkering");
 
    const web3_tinkering_address = await Web3Tinkering.deploy("Did I do it??");
    console.log("Contract deployed to address:", web3_tinkering_address);
 }
 
 main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });