// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract mathFunctions {
    
    string name;
    string family;

    function set(string memory x ,string memory y) public {
        name = x;
        family = y ;
    }

    function get() public view returns (string memory) {
        return string(abi.encodePacked( 'name is = ' , name , ' and ' , ' family is = ' , family));
    }

}

