// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract A {
    struct Person{
       uint id;
       uint age ;
       string name ;
    }
}

contract B is A{
    mapping( uint => Person)persons ;
    function addMember(uint _id , uint _age , string memory _name)public{
        persons[_id] = Person(_id , _age , _name);  
    }
    function showMember(uint _id)public view returns(uint , string memory){
        return( persons[_id].age , persons[_id].name );
    }
}