//pragma solidity ^0.8.0;

contract functionevent {
    address admin;

    event addednumbers(uint indexed num1, uint indexed num2, uint indexed total);
    event Admin(address indexed owner);

    // Constructor to set the admin during contract deployment
    constructor() {
        admin = msg.sender;
    }

    // A Function that emit the Admin address
    function getAdmin() public {
      emit Admin(admin);
    }
    
    // A Function that emit two numbers added together
    function addNumbers(uint num1, uint num2) public {
        uint total = num1 + num2;
        emit addednumbers(num1,num2,total);


    }
    //A payable function to send ether to the contract
    function deposit () external payable {}

}