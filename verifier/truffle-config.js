const dotenv = require("dotenv");
dotenv.config();

const HDWalletProvider = require("@truffle/hdwallet-provider");
const rpcURL = process.env.RPC_URL;
const mnemonic = process.env.WALLET_MNEMONIC;

module.exports = {
  networks: {
    goerli: {
      provider: () => new HDWalletProvider(mnemonic, rpcURL),
      network_id: "5",
    },
    local: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*",
      websockets: true
    },
  },
  compilers: {
      solc: {
        version: "^0.8.0"
    }
  }
};
