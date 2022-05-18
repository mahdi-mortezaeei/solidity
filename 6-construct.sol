// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract sample {
    
    address owner ;
    
    constructor()  {
        owner =  msg.sender ;
    }
    
   function test() public view returns(bool){
       if ( msg.sender != owner){
           return (false);
       }
    return (true);
   } 

}

/*
 constructor method runs once after publish sc
*/