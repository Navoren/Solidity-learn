// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract day2{
    int8 public num = 127; //-128 to 127

    //can't typecast -> to safeguard it we will use libraries(safe math)
    uint256 public num1=256; //support
    uint8 public num2= uint8(num1);

    function uncheck() public{
        unchecked{
            num1++;
        }
    }

    bool public valid;

    function isEven(uint a) public {
        require(a%2==0, "a is odd");
        valid = true;
    }
}