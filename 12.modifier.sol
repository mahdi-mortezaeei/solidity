// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract Person {
    address owner;
    string  name;
    uint   internal age;
 
    constructor(){
         owner = msg.sender ;
    }
    modifier onlyOwner{
         require(msg.sender == owner, "not owner"); 
         _;
         
         /* equal
          if(owner != msg.sender ){
              break ;
          }
         */
    }
    
    function setPerson(string memory _name , uint  _age)public payable onlyOwner{
        name = _name;
        age = _age;
    }
    function showPerson()public view returns(string  memory , uint  ) {
        return(name , age );
    }
    function showAge()public view returns(uint){
      return(age);
    }
}

