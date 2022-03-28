// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract Person {
    address owner;
    string  name;
    uint   internal age;
    string private ID;             //Encapsulation
    string private cap;
    string public  SCDESC = 'not set yet' ;
 
    constructor(){
         SCDESC = 'this is a sample code for solidity OOP';
         owner = msg.sender ;
    }
    function setPerson(string memory _name , uint  _age  , string memory _id)public  {
        name = _name;
        age = _age;
        ID = _id ;
    }
    function showPerson()public view returns(string  memory , uint  , string  memory) {
        return(name , age , ID);
    }
    function showAge()public view returns(uint){
      return(age);
    }
    function showID()internal view returns(string memory ){
        return(ID);
    }
    function showCap()external view returns(string memory ){
        return(cap);
    }
    function showIDexternal()external view returns(string memory ){
        return(showID());
    }
    function showIDPrivate()private view returns(string memory ){
        return(ID);
    }
    function showNamePoly()public virtual view returns(string memory ){   // polymorphism
        return(name);
    } 
    function showSCDESCPoly()public virtual returns(uint){   // polymorphism by different method
        return(age);
    }  
}

/* ========== subclass ========== */
contract Student2 is Person{     //Inheritance
    function showNameProperty()public view returns(string memory){ // use default property
      return(name);
    }
    function showSCDESCProperty()public view returns(string memory){ // use pubid property
      return(name);
    }
    function showStudentAgeProperty()public view returns(uint){     // use internal property
        return(age);
    }

    function showPersonMethod()public view returns(string  memory , uint  , string  memory) { // use public method
        return(showPerson());
    }
    function showStudebtID()public view returns(string memory ){                              // use internal method
        return(showID());
    }
    function showNamePoly()public override view returns(string memory ){   // polymorphism by the same method
        return(name);
    } 
    
    function showSCDESCPoly()public override pure returns(uint ){   // polymorphism by different method
        return(20);
    } 
}


contract Student3 is Student2{            // twice Inheritance
      function showSCDESCPropertyTwice()public view returns(string memory){ // use pubid property
      return(name);
    }
}

/* ========== instance of class ========== */
contract Student{
    Person person;        //abstraction
    function showStudentAge()public view returns(uint){                                       // use public method
        return(person.showAge());
    }
    function showPersonMethod()public view returns(string  memory , uint  , string  memory) { // use public method
        return(person.showPerson());
    }
    function showStudentCap()public view returns(string memory ){                            // use external method
        return(person.showCap());
    }
    function showStudentID()public view returns(string memory ){                             // use external method
        return(person.showIDexternal());
    }
}


// abstraction => ..class ..structure
// Encapsulation => ..class ..method
// Inheritance => ..class
// polymorphism => ..class 
