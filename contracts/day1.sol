// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract day1{
    //work-area
    uint public num = 5; //num -> state variable
    uint num1 = 9;
    uint num2 = 3;

    uint public value = 10; //automatically solidity will create a getter function for it

        
        constructor(){ //can't make more than one constructor
        num = 100;
        }
    //no destructor in solidity

    //gas cost is associated with state variables
    //read is cost free, writing cost gas

    //can't perform decimal operations in solidity

    // function localVariableSetter() public {
    //     uint num2 = 10; //num2 -> local variable -> stores in stack
    // }

    function addition() public pure{
        uint a=10;
        uint b=20;
        uint c; //good practice -> declare it differently
        c= a+b;
    }

    function subtraction() public pure returns(uint){
        uint a=10;
        uint b=20;
        return b-a;
    }
    
    function multiplication() public view returns(uint){
        return num1*num2;
    }

    function division(uint a, uint b) public pure returns(uint){
        return a/b;
    }

}