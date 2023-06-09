# Celestia-Basic-Nft-Deploy

Everyone know that free NFT collections can create a hype on any network. Lately, this hype has been particularly noticeable in Layer 2 projects. Therefore, it is beneficial for developers to get involved in the Free NFT Hype in Celestia in advance.

In this guide, I will show you how to create a free NFT collection on Celestia using a simple mint contract. With the help of the NFT collection that I have previously deployed and created, you will be able to be part of this ecosystem as well.

# Step 1
Deploy your Celestia node light with my script.

`https://github.com/crazywriter1/node_installation_tool`

# Step 2
Setup Node.js

`curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\ sudo apt-get install -y nodejs`

# Step 3
Setup Rust

`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

After installation, configure these resources.

`source $HOME/.cargo/env`
`source $HOME/.cargo/bin`

# Step 4

Install Foundry

`curl -L https://foundry.paradigm.xyz | bash`

`cargo install --git https://github.com/foundry-rs/foundry --profile local --force foundry-cli anvil chisel`

İt takes at least 30 minute.
If you prefer to install it in a different way, I recommend you to go to the source.

`https://book.getfoundry.sh/getting-started/installation#using-foundryup`

# Step 5

After the installation is complete, configure the necessary settings.

`echo $PATH`

`export PATH=$PATH:/root/.cargo/bin`

# Step 6

Download ethermint

`git clone https://github.com/celestiaorg/ethermint.git`

Get in to ethermint

`cd ethermint`

İnstall ethermint

`make install`

And `source root/.bashrc`

# Step 7

As a precaution, move the necessary cargo files into the ethermint directory.

`cargo init`

`source $HOME/.cargo/env`

`cargo install cargo-update`

`cargo install-update -a`

# Step 8

Open a screen for Ethermint to run in the background.

`Screen -S NFT`

Make sure you are inside the ethermint directory. If you're not, navigate to it using the command `cd ethermint`.

# Step 9

Let's deploy our ethermint by running the codes in order.

`bash init.sh`

`NAMESPACE_ID=$(openssl rand -hex 8)
DA_BLOCK_HEIGHT=$(curl https://rpc-blockspacerace.pops.one/block | jq -r '.result.block.header.height')`


```ethermintd start --rollkit.aggregator true --rollkit.da_layer celestia --rollkit.da_config='{"base_url":"http://localhost:26659","timeout":60000000000,"gas_limit":6000000,"fee":6000}' --rollkit.namespace_id $NAMESPACE_ID --rollkit.da_start_height $DA_BLOCK_HEIGHT ```

![bırıncı](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/d85789c9-08fb-43d8-a0e3-331a229ece05)

Once you are certain that your node is running as shown in the output, press `CTRL-A+D` to detach the screen and send it to the background.

## WARNING!
# Do not forget to get `TİA` 

# Step 10
If the forge folder is not properly installed with Foundry on your server, you can use the following commands.

`npm install -g @arcblock/forge-cli`

`forge remappings`

`ds-test/=lib/forge-std/lib/ds-test/src/`

`forge-std/=lib/forge-std/src/`

`forge init nft`

`cd nft/lib/forge-std`

`npm run` in the forge

`npm run build` in the forge

`forge install Openzeppelin/openzeppelin-contracts`


# Step 11

Before editing and compiling the contract of your NFT project, I recommend using the NFT generator at `https://www.genfty.com/nft-generator` or using the IPFS of a collection you have prepared from another source.

# Others İPFS apps

`https://app.pinata.cloud/gateway`

`https://www.infura.io/product/ipfs`

# Genfty

Upload your remix data.

![genftyguı](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/27feb614-70d3-4b03-a24f-4c07374a9664)


Please pay attention to the following steps, as you will use the entered data in your contract. Please make sure to remember what you enter.

![genfyguı1](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/b4bbac35-548e-4cf8-ad03-80fcd3ad60f4)

Save your ipfs code!

![genftyguı3](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/7253063b-2397-477e-9706-5908f49bbf4b)


# Step 12

The places to be modified in the content of the files `t.sol`, `s.sol`, and `.sol` are marked with red boxes. Replace these boxes with your collection name and IPFS link .Also change your supply amount, mint price and you can run the Free minting function.

You can edit the files and transfer them to your server using `MobaXterm` or `WinSCP` or you can edit them directly on your server using the commands;

`sudo nano Counter.sol`
`sudo nano Counter.t.sol`
`sudo nano Counter.s.sol`

.sol

![kontrat1](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/6801ba4a-41c0-46ac-9159-ff04cefd72cf)

s.sol

![bugieguide](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/3821e152-2a70-4054-9adf-a15d26660072)

t.sol

![kontrat3](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/4c1de477-62d4-4f6e-92cf-198c616dc6f3)


# Step 13

Now compile your contract with `forge test -vv`

Congratulations!! Mint machine operational

![Outputto](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/f88a3828-d55c-46e9-a376-aa826d349f61)

# Step 14

I recommend opening the following port codes:

`sudo apt install ufw -y`
`sudo ufw allow ssh`
`sudo ufw allow https`
`sudo ufw allow http`
`sudo ufw allow 6180`
`sudo ufw allow 80`
`sudo ufw allow 9101`
`sudo ufw allow 181`
`sudo ufw allow 182`
`sudo ufw allow 9545`
`sudo ufw allow 4133`
`sudo ufw allow 3033`
`sudo ufw allow 8080`
`sudo ufw allow 9103`
`sudo ufw enable`

You should especially enable the following port codes: `8080`, `80`, `9545`, `8585`, `https`, and `http`.


# Step 15

Open new screen  `screen -S anvil` 
Be sure you are in nft file `cd nft`

`anvil --port 9545`

![you can get one of you](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/3bb2d766-e9ac-4699-99d9-46b4fe42f904)

Get one key and export it with `export ANVIL_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80`

`export RPC_URL=http://YOUR_IP:9545`

`forge script script/Bugs.s.sol:BugsScript --fork-url $RPC_URL  --private-key $ANVIL_KEY --broadcast`

Change `Bugs`

![anvil](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/26df93cc-db4a-4b27-b89c-4939085c4d7d)

Congratulations Mint contract deployed.

Now Set some conf.

Export your contract

`export CONTRACT_ADDRESS=0x0116686e2291dbd5e317f47fadbfb43b599786ef`

`forge script script/Bugs.s.sol:BugsScript --fork-url \ $RPC_URL  --private-key $ANVIL_KEY --broadcast`

Export your recipient

`export RECIPIENT_ADDRESS=0xd6C5C3e5A9B7ca3c4661E9C20a8F03450842e039`

 You can try to mint
`cast send --rpc-url=$RPC_URL $CONTRACT_ADDRESS  "mintTo(address)" $RECIPIENT_ADDRESS --private-key=$ANVIL_KEY`

Example

`cast send --rpc-url=http://localhost:9545 0xbd4f42743becf5955e5adef700a8adcda99bda62 "mintTo(address)" 0xd6C5C3e5A9B7ca3c4661E9C20a8F03450842e039 --private-key=0x8b3a350cf5c34c9194ca85829a2df0ec3153be0318b5e2d3348e872092edffba`

# Step 16

 Get your priv keys

`echo PRIVATE_KEY=$(ethermintd keys unsafe-export-eth-key mykey --keyring-backend test)`
- After you get the private key, import the metamask and copy your wallet address. Then paste the code below.

`export RECIPIENT_ADDRESS=<your wallet address>` example `export RECIPIENT_ADDRESS=0X00ADFAF000000.....`

Export your RPC 

`export RPC_URL=http://localhost:8545`

Deploy your contract

`forge script script/Bugs.s.sol:BugsScript \ --rpc-url http://localhost:8545 --private-key $PRIVATE_KEY --broadcast`

After that write in the code export your contract adress.

`export CONTRACT_ADDRESS=<new-contract-address>` Like this `export CONTRACT_ADDRESS=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`

You can mint your nfts with this code

`cast send --rpc-url=$RPC_URL $CONTRACT_ADDRESS  "mintTo(address)" $RECIPIENT_ADDRESS --private-key=$PRIVATE_KEY`


You now have deployed an NFT collection on a rollup. Next, you need to connect this project to an interface and handle the necessary requests.

# You will see this output if you mint your token.

![CELESTIA_MINT](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/83362407-01c5-48dd-8144-b6d88729e638)

My NFT Contract Address: 0x5FbDB2315678afecb367f032d93F642f64180aa3

After installing celestia, ethermint and foundry, you can mint my nft. I will update after frontend is created.

# Bonus

You can watch how to set up Metamask network settings from the link below. You can add the private key you exported from Metamask's account details section by clicking on the circular button on Metamask. Soon, I will provide a simple guide on how to easily connect your contract to a domain(Frontend- User ınterface) and how to publish your NFT project and market it. The difficult part is over, and you are now very close to becoming an NFT project owner.

# Watch Metamask Network Settings Tutorial

https://docs.celestia.org/assets/images/add-metamask-4422ec98f02b36d3faea64cb152be92c.gif

# User Interface

![Celesti](https://github.com/crazywriter1/Celestia-Basic-Nft-Deploy/assets/53251494/faac5aab-4dc7-433f-b58a-76fc465ccdca)



I have designed such an interface for Bugs NFTs. By modifying the colors, links, and specific sections of this interface, I will show how to deploy your own project with a domain address. Get ready to secure your spot among the NFT projects in Celestia.

I'm open to ideas about interfaces designs . If you encounter any problems or have a suggestion for the Website, please do not hesitate to contact me.
https://twitter.com/mjolnirisback
