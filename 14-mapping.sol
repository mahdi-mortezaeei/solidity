// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SC {
    struct Person{
        address account; // primary key as index name of struct members
        bool verify;
        uint8 price;
    }
    mapping( address => Person ) persons;  // persons[address] => Person
    
    function setInfo(address _account , uint8 _price )public {
      persons[_account] = Person(_account , false , _price );    
    }
    
    function getInfo(address _account)public view returns(address , bool , uint8){
        return(persons[_account].account , persons[_account].verify , persons[_account].price);
    }
    
    function setVerify(address _account)public{
        persons[_account].verify = true ; 
    }
    
    function getVerify(address _account)public view returns(bool){
        return(persons[_account].verify);
    }
    
}

