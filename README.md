# activity.sol

This project demonstrates the use of require(), assert(), and revert() statements in Solidity smart contracts.

## Description

The smart contract manages payments between two parties. It uses require() to ensure valid input conditions, assert() to check internal consistency, and revert() to handle exceptional conditions. These error handling techniques ensure the contract operates securely and reliably, facilitating transparent and decentralized payment transactions.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevertExample {
    uint256 public storedData;

    function set(uint256 x) public {
        require(x != 0, "Input must not be zero");
        assert(x != 10);
        storedData = x;
    }
    
    function assertExample() public pure returns (uint256) {
        assert(10 != 20); // Always true, doesn't revert
        return 30;
    }
    
    function revertExample(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Division by zero is not allowed");
        return a / b; // Division will revert if b is zero
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

Metacrafter
[@claro]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
