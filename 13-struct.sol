// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SC {
    struct Person{
        uint id;  // primary key
        address account;
        bool verify;
        uint8 price;
    }
    Person[] persons;
    
    function setInfo(address _account , uint8 _price)public {   
      persons.push( Person( persons.length , _account , false , _price ) );     // set automatic id by person count member    
    }
    
    function getInfo(uint _id)public view returns(address , bool , uint8){          // get info by index array
        return( persons[_id].account , persons[_id].verify , persons[_id].price );
    }
    
    function setVerify(uint _id)public{
        persons[_id].verify = true ; 
    }
    
    function getVerify(uint _id)public view returns(bool){
        return(persons[_id].verify);
    }
    
    // struct Person{
    //     uint id;
    //     address account;
    //     bool verify;
    //     uint8 price;
    // }
    // Person person;
    // Person[] persons;
    // uint i=0;
    // function setInfo(address _account)public {
    //   Person memory temp;
    //   temp = Person(i , _account , false , 0);
    //   persons.push(temp);
    //   i++;
    // }  
    
}

