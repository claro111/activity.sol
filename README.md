# MOdule1.sol

This project demonstrates the use of require(), assert(), and revert() statements in Solidity smart contracts.

## Description

The SimpleVotingSystem is a decentralized voting contract implemented in Solidity for use on the Ethereum blockchain. It allows users to register as voters, cast votes for specific options, and check the validity of options. The contract ensures robust error handling and input validation using Solidity's require, assert, and revert statements.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```
[// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint public myNumber;

    function setNumber(uint _num) public {
        require(_num != 0, "Number cannot be zero");

        myNumber = _num;
    }

    function assertExample(uint _x) public pure returns (uint) {
        uint y = _x + 10;

        assert(y > _x);

        return y;
    }

    function revertExample(uint _num) public pure returns (string memory) {

        if (_num == 50) {
            revert("Wrong number");
        }

        return "No error";
    }
}](https://www.loom.com/share/069949c8eff741cd936fba42f7a3ee26?sid=3a87a2e1-4547-465b-8ba5-19f368f37a48)
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

Metacrafter
[@claro]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
