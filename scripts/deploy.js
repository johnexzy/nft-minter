const main = async () => {
    const myNftContractFactory = await hre.ethers.getContractFactory("MyNFT")
    const nftContract = await myNftContractFactory.deploy()

    await nftContract.deployed()

    console.log("Contract deployed to: ", nftContract.address)


    // let trxn = await nftContract.makeAnNFT()

    // await trxn.wait()
    // for (let index = 0; index < 9; index++) {
        
    //     trxn = await nftContract.makeAnNFT()

    //     await trxn.wait()
    // }
    
}

const runMain = async () => {
    try {
        await main()

        process.exit(0)
    } catch (error) {
        console.log(error)
        process.exit(1)
    }
}

runMain()