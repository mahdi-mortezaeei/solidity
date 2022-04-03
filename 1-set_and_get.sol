// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {

    uint storedData; // state or global variable 

    function set(uint x) public {
        storedData = x; // local or private variable
    }

    function get() public view returns (uint,int,bool) {
        return (storedData,10,true);
    }

    function getPure() public pure returns(uint){
        return (100);
    }
}

/*
1- use view keyword to get global variable and pure for just local variables in functions
2- public is access modifier
3- variable type : bool , int , uint , string , address , enum , bytes1 to bytes32 , array
    by defaults : false , 0  ,  0  , - , 0x0000..000 , - , 0*00 to 0*0000..0000 , -
4-  access modifires : Public , private , internal , external 
5- type hinting use by returns in fuction signature
*/