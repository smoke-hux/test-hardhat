//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "hardhat/console.sol";

contract Greeter {
    string private greeting;
    constructor(string memory _greeting) {
        console.log("Deploying a greeter with greeting:" , _greeting);
        greeting = _greeting; // set the greeting value


    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("changing greeting from '%s' to '%s'", greeting, _greeting); // log the greeting change
        greeting = _greeting;
    }

    receive() external payable{}
    fallback() external payable{}
 }

 // this contract declares a function that returns a string
 // and a function that changes the greeting    
 // there are two methods a constructor and  a function 

// the constructor initiates the greeting variable with the provided string value
// the function changes the greeting variable to the provided string value