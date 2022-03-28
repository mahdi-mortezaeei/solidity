// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract arrayFunction {

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
 
    function checkExist( uint[] memory numss , uint _num)public pure returns(bool result ){
        for(uint i=0 ; i < numss.length ; i++){
            if(numss[i] == _num){
                result = true ;
                break;
            }
        }
        return (result);
    }

}

