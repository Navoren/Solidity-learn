// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract day3{

    //Modifier
    uint public num=10;

    modifier onlyValid(bool value){
    require(true==value, "Not Valid");
     _;
    }

    function check1(bool value) public onlyValid(value) {
        num=100;
    }
    function check2(bool value) public onlyValid(value) {
        num=200;
    }
    function check3(bool value) public onlyValid(value) {
        num=300;
    }


    //Loops -> will only work in a function, struct
    uint public sum;
    function loopCall() public {
        for(uint i=0; i<10; i++){
            sum+=i;
    }

    // while(i<10){

    // }


    // do{

    // }while(i<10);
    }



    //Conditionals -> Every transaction is success in if-else

    function check4(bool value) public pure returns (uint){
        if(value==true){
            return 1;
        }else{
            return 0;
        }
    }

    //On fail it will call-back
    function check5(bool value) public{
        require(value==true, "Not True");
        num = 100;
    }
    
}