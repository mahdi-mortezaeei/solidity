// SPDX-License-Identifier: GPL-3.0
pragma experimental ABIEncoderV2;
pragma solidity >=0.4.16 <0.9.0;

contract arrayFunction {
    
    uint[] globalNumbers ;
    string[3] globalNames = ['mahdi' , 'ali' , 'mosi'];
    
    
    uint[] numbers;
    function simpleArray(uint _number)public payable{ numbers.push(_number);  }
    function showSimpleArray()public view returns(uint[] memory){  return (numbers);  }
    function showSimpleSingleArray()public view returns (uint){ return (numbers[0]);  }
    
    
     function sampleArray() public pure returns(uint[] memory) {
        uint[] memory localNumbers ;
        localNumbers[0] = 1 ;
        localNumbers[1] = 2 ;
        localNumbers[0] = 3 ;
        return (localNumbers);
     }
     
     
     uint[10] zojOne ;
     function setZojOne()public payable{
         uint j= 0 ;
         uint i = 0 ;
         
         while(i<20){
             zojOne[j] = i ;
             i+= 2 ;
             j++ ;
         }
     }
     function getZojOne()public view returns(uint[10] memory){
         return (zojOne);
     }
     
     uint[] zojTwo ;
     function setZojTwo()public payable {
         uint i = 0 ;
         for(i ; i <100 ; i+= 2 ){
             if(i % 2 == 0 ){
                 zojTwo.push(i) ;
             }
         }
     }
     function getZojTwo()public view returns(uint[] memory){
         return (zojTwo);
     }
  
     uint8[] oldArray; 
     function fetchArray(uint8[] memory newArray)public payable returns(uint8[] memory ){
         uint8 i = 0;
         while (i < newArray.length){
             oldArray.push(newArray[i]);
             i++ ;
         }
         return (oldArray);
     }
     
     uint8[] pushPopArray;
     function arraypush(uint8 _number)public  {
         pushPopArray.push(_number);
     }
     function arraypop()public payable returns(uint8[] memory){
         pushPopArray.pop();
         return (pushPopArray);
     }
     

    string[] namesArrayme;
    function pushArrayme(string calldata  _name) public {
        namesArrayme.push(_name);
    }
    function getArrayme() external view returns (string[] memory) {
        return namesArrayme;
    }
    
    uint[] nums = [1,2,3,4,5,6,7,8,9];
    function checkExist(uint _num)public view returns(bool result ){
        result = false ;
        for(uint i=0 ; i < nums.length ; i++){
            if(nums[i] == _num){
                result = true ;
                break;
            }
        }
        return (result);
    }
 
    function testArray() public pure{
      uint len = 7; 
      
      //dynamic array
      uint[] memory a = new uint[](7);
      
      //bytes is same as byte[]
      bytes memory b = new bytes(len);
      
      assert(a.length == 7);
      assert(b.length == len);
      
      //access array variable
      a[6] = 8;
      
      //test array variable
      assert(a[6] == 8);
      
      //static array
      uint[3] memory c = [uint(1) , 2, 3];
      assert(c.length == 3);
   }

}

