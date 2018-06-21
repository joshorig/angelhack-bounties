# angelhack-bounties

A simple example of the bounties DApp with a React.js front end used in the AngelHack Intro To Ethereum: Build your 1st DApp Workshop

* Any user with an Ethereum account can Issue a bounty in ETH with the requirements
* Any user can submit a fulfillment of the bounty with evidence
* The bounty issuer can accept a fulfillment which would result in the fulfiller being paid out


## Installation

1. Install Truffle globally.
    ```javascript
    npm install -g truffle
    ```

2. Install ganache-cli
    ```javascript
    npm install -g ganache-cli
    ```

3. Install npm packages
    ```javascript
    npm install
    ```

## Run Tests

1. Run ganache-cli
    ```javascript
    ganache-cli
    ```

2. Run test through truffle
    ```javascript
    truffle test
    ```

##  Deploy to Rinkeby

1. Add a file in the root of the directory named 'secrets.json'
    ```javascript
    touch secrets.json
    ```

2. Populate the 'secrets.json' file with your mnemonic
    ```json
    {
      "mnemonic": "my good mnemonic ..."
    }
    ```

3. Run deploy through truffle
    ```json
    truffle migrate --network rinkeby
    ```

## Launch front end in dev mode

You will need to have deployed the smart contracts first!

1. Run via npm
   ```json
   npm run start
   ```
