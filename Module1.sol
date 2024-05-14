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


