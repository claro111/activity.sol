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
    mapping(string => uint) public votesReceived;
    string public winningOption;
    uint public maxVotes;

    // Register a voter
    function registerVoter(address _voter) public {
        require(!registeredVoters[_voter], "Already registered");
        registeredVoters[_voter] = true;
    }

    // Cast a vote
    function vote(string memory _option) public {
        require(registeredVoters[msg.sender], "Voter not registered");
        votesReceived[_option]++;
        assert(votesReceived[_option] > 0); // Ensure vote count doesn't overflow
        if (votesReceived[_option] > maxVotes) {
            maxVotes = votesReceived[_option];
            winningOption = _option;
        }
    }

    // Example function using revert
    function checkOption(string memory _option) public pure returns (string memory) {
        require(bytes(_option).length > 0, "Option cannot be empty");
        if (keccak256(bytes(_option)) == keccak256(bytes("ERROR"))) {
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
