# Celestia-Basic-Nft-Deploy

Everyone know that free NFT collections can create a hype on any network. Lately, this hype has been particularly noticeable in Layer 2 projects. Therefore, it is beneficial for developers to get involved in the Free NFT Hype in Celestia in advance.

In this guide, I will show you how to create a free NFT collection on Celestia using a simple mint contract. With the help of the NFT collection that I have previously deployed and created, you will be able to be part of this ecosystem as well.

# Step 1
Deploy your light Celestia node with my script.

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


```ethermintd start --rollkit.aggregator true --rollkit.da_layer celestia --rollkit.da_config='{"base_url":"http://localhost:26659","timeout":60000000000,"gas_limit":6000000,"fee":6000}' --rollkit.namespace_id $NAMESPACE_ID --rollkit.da_start_height $DA_BLOCK_HEIGHT```

Once you are certain that your node is running as shown in the output, press `CTRL-A+D` to detach the screen and send it to the background.
