pragma solidity ^0.8.0;

contract AdminOnly {
    address admin;

    // Modifier to check if the caller is the admin
    modifier onlyAdmin() {
        require(msg.sender == admin, "Caller is not the admin");
        _; 
    }

    // Constructor to set the admin during contract deployment
    constructor() {
        admin = msg.sender;
    }

    // Function to get Admin
    function getAdmin() public view onlyAdmin returns(address){
      return admin;
    }

    // Function to add two numbers
    function addNumbers(uint num1, uint num2) public view onlyAdmin returns(uint){
        return num1 + num2;
    }

}
