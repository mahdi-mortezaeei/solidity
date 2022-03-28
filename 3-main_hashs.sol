// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract mainHashs {

    address publisherAddress = msg.sender ;     // publisher or initialator address 
    address executerAddress ;                   // executer address
    address contractAddress = address(this)  ;  // contract address
    
    function showPublisherAddress() public view returns(address){
        return address(publisherAddress);
    }
    
    function showExecuterAddress() public view returns(address){
        return address(tx.origin);
    }
    
    function showExecuterAddressByReturn() public view returns( address , address){
        return (msg.sender , tx.origin);
    }
    
    function showContractAddress() public view returns(address){
        return address(contractAddress);
    }



}

