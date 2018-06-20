const HDWalletProvider = require('truffle-hdwallet-provider')
const fs = require('fs')

// First read in the secrets.json to get our mnemonic
let secrets
let mnemonic
if (fs.existsSync('secrets.json')) {
  secrets = JSON.parse(fs.readFileSync('secrets.json', 'utf8'))
  mnemonic = secrets.mnemonic
} else {
  console.log('No secrets.json found! Will use empty mnemonic')
  mnemonic = ''
}

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*"
    },
    ropsten: {
      provider: new HDWalletProvider(mnemonic, 'https://rinkeby.infura.io'),
      network_id: '3',
      gas: 4500000,
      gasPrice: 21000000000
    }
  }
}
