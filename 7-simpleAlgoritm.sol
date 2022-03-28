// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;


contract sampleAlgoritms {
    
   function checkManfiYaMosbat(int x) public pure returns(string memory){
       if ( x > 0){
           return ('mosbat');
       }
    return ('manfi');
   } 
   
   function bakhshPazirBar(int x) public pure returns(string memory){
       if ( (x % 3 == 0 ) && (x % 2 == 0) ){
           return ('bakhsh pazir');
       }
    return ('bakhsh napazir');
   } 
   
   function numbersInRabgeAndBakhshPazir(int number) public pure returns(uint8){
       uint8 i = 0;  // counter
       int x = 0;    // number
       while( x < number ){
           x++;
           if ( x % 13 == 0 && x % 17 == 0){
               i++;
           }
       }
       return (i);
    } 
    
    function evenNimberBakhshPazir3(int number) public pure returns(uint8){
       uint8 counter = 0;  // counter
       int x = 0;    // number
       while( x < number ){
           x+=2;
           if ( x % 3 == 0){
               counter++;
           }
       }
       return (counter);
    } 

}