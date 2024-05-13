// SPDX-License-Identifier: MIT
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
}
