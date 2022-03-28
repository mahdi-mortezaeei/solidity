// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

interface tokenInterface{
    function showOwnerBalance()external view returns(uint);
    function showBalance( address  )external view returns(uint);
    function addPerson(address)external returns(bool) ;
    function AccountManage( address , uint )external payable returns(bool);
    function transfer(address _sender , address _reciver , uint _ammount)external payable returns(bool);
}

contract SC is tokenInterface {
    
  uint private balance ;
  address private owner ;
  uint private accountCoun ;
  
  struct Account{
      address account; 
      uint balance ;
      bool verify;
  }
  
  mapping(address => Account)accounts;
  
  constructor(){
      owner = msg.sender ;
      accounts[owner] = Account( owner , 1000 , false); 
  }
  
  modifier onlyOwner{
     require(msg.sender == owner, "not owner"); 
     _;
  }
  
  function showOwnerBalance()public onlyOwner override view returns(uint){
      return( accounts[owner].balance );
  }
  
  function showBalance(address _address)public override view returns(uint) {
      return( accounts[_address].balance );
  }
  
  function addPerson(address _address)public override returns(bool){
    //   require(!accounts[_address]);
      accounts[_address] = Account( msg.sender , 0 , false);
      return(true);
  }
   
  function AccountManage( address _address , uint _balance )public onlyOwner override payable returns(bool){
      if(accounts[owner].balance >= _balance) {
           accounts[owner].balance = accounts[owner].balance - _balance ;
           accounts[_address].balance = accounts[_address].balance  + _balance ;
           return(true);
      }
     return(false);
  }
  
  function transfer(address _sender , address _reciver , uint _balance)public onlyOwner override payable returns(bool){
       if(accounts[_sender].balance >= _balance ){
           accounts[_sender].balance = accounts[_sender].balance  - _balance ;
           accounts[_reciver].balance =  accounts[_reciver].balance + _balance ;
           return(true);
       }
       return(false);
  }
  

}

