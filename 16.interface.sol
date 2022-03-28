// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

interface A {
  function math(int x, int y)external pure returns(int , int);
}

contract B is A {
     // implement body of abstract method
     function math(int x, int y)public override pure returns(int  , int){  
         return( (x+y) , (x-y) );
     }
}

