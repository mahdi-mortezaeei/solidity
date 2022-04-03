// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract types {
    
    int myVar ;
    string myName = 'mahdi' ;
    
    /* no input - no output */
    function sample1() public {
        myVar = 10 ;
    }
    
    /* no input - output */ 
    // call global output
    function sample2() public view returns(int) {
        return  (myVar);
    }
    
    /* input , no output */
    function sample3(int _None , int _Ntwo) public pure {
        (_Ntwo * _None) / 2 ;
    }
    
    /*  input - output */
    // call local output
    function sample4(uint myNumber ) public pure returns(uint) {
        return  (myNumber);
    }
    
    /* set inline input - call output */
    function sample5() public pure returns(uint myNumber , string memory , string memory location ) {
        myNumber = 10 ;
        string memory myFamily = 'mortezaeei'; 
        location = 'home' ;
        return  (myNumber,myFamily,location);
    }
    
    /* set inline string input in two ways - call output */
    function sample6( string memory myCity ,string memory myCountry ) public view returns(string memory , string memory myNick , string memory , string memory) {
        myNick = "jonz" ;
        myCity = 'tehran' ;
        return  (myName , myNick , myCity , myCountry);
    }

     /* no input - output without return */ 
    function sample7() public view returns(int x) {
     x = myVar ;
    }
    
}
