// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;


contract mathFunctions {
    
    function operatorsFunc(int x , int y ) public pure returns (int sum , int diff ,int multi ,int division , int modulus  ) {
         sum = x + y  ;
         diff = x - y ;
         multi = x * y ;
         division = x/y ; 
         modulus = x%y ;
         return ( sum , diff , multi , division , modulus  );
    }
    
    function powerFunc(uint number ,uint power  ) public pure returns (uint result  ) {
         result = number**power ;
         return ( result  );
    }

    function absFunc(int x) public pure returns (int result) {
    return x >= 0 ? x : -x;
    }

    function sqrt(uint x) public pure returns(uint y) {
        uint z = (x + 1) / 2;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }
    
    function addMode(uint x , uint y , uint z) public pure returns(uint){
        return addmod(x,y,z); // (x + y) % k
    }
    
    function mulMode(uint x , uint y , uint z) public pure returns(uint){
        return mulmod(x,y,z); // (x * y) % k
    }
    
    function keccakMod()public pure returns (bytes32){
        return  keccak256("mahdi"); // Keccak-256 hash 
    }
    
    function sha256Mod()public pure returns (bytes32){
        return  sha256("mahdi"); // SHA-256 hash
    }
    
    function ripemd160Mod()public pure returns (bytes32){
        return  sha256("mahdi"); // RIPEMD-160 hash
    }

}