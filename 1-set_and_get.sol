// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {

    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint,int,bool) {
        return (storedData,10,true);
    }

    function getPure() public pure returns(uint){
        return (100);
    }
}

/*
1- use view keyword to get global variable and pure for just local variables 
2- public is access modifier
*/