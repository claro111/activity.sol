# Module1.sol

This project demonstrates the use of require(), assert(), and revert() statements in Solidity smart contracts.

## Description

The SimpleVotingSystem is a decentralized voting contract implemented in Solidity for use on the Ethereum blockchain. It allows users to register as voters, cast votes for specific options, and check the validity of options. The contract ensures robust error handling and input validation using Solidity's require, assert, and revert statements.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVotingSystem {
    mapping(address => bool) public registeredVoters;
    mapping(bytes32 => uint) public votesReceived;
    bytes32 public winningOption;
    uint public maxVotes;

    // Register a voter
    function registerVoter() public {
        require(!registeredVoters[msg.sender], "Already registered");
        registeredVoters[msg.sender] = true;
    }

    // Cast a vote
    function vote(bytes32 _option) public {
        require(registeredVoters[msg.sender], "Voter not registered");
        votesReceived[_option]++;
        assert(votesReceived[_option] > 0); // Ensure vote count doesn't overflow
        if (votesReceived[_option] > maxVotes) {
            maxVotes = votesReceived[_option];
            winningOption = _option;
        }
    }

    // Example function using revert
    function checkOption(bytes32 _option) public pure returns (string memory) {
        require(_option != bytes32(0), "Option cannot be empty");
        if (_option == "ERROR") {
            revert("Invalid option");
        }
        return "Option is valid";
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
