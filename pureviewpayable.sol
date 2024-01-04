pragma solidity ^0.8.0;

contract Pureviewpayable {
    address admin;

    // Constructor to set the admin during contract deployment
    constructor() {
        admin = msg.sender;
    }

    // A view Function to get Admin
    function getAdmin() public view returns(address){
      return admin;
    }

    // A pure Function to add two numbers
    function addNumbers(uint num1, uint num2) public pure returns(uint){
        return num1 + num2;
    }
    //A payable function to send ether to the contract
    function deposit () external payable {}

}