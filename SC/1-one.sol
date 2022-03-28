// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

/*
برای یک پلتفرم صنایع دستی اسمارت کانترکتی میخواهیم بنویسیم
با توجه به تحلیلهای بدست آمده به این نتیجه میرسیم که فیلدهای زیر را بر روی بلاکچین ذخیره نمائیم
* شناسه اثر
* اکانت هنرمند
* اکانت خریدار
* قیمت اثر
*/

contract productSC {

     uint serialProduct ;                    // شناسه اثر
     uint idProductManufacturer ;           // اکانت هنرمند
     uint idLastOwner ;                     // اکانت خریدار
     uint lastCost ;                       // قیمت اثر
     
    address owner ;                        // دسترسی مدیریت
    
    constructor()  {
        owner =  msg.sender ;
    }
    
     function set_all_data(uint _setSerialProduct , uint _setIdProductManufacturer , uint _setIdLastOwner , uint _setCost ) public  {
          if ( msg.sender == owner){
            serialProduct = _setSerialProduct ;
            idProductManufacturer = _setIdProductManufacturer ;
            idLastOwner = _setIdLastOwner ;
            lastCost = _setCost ;
          }
     }
     
     function updateCost(uint _updateNewCost)public {
         if ( msg.sender == owner){
              lastCost = _updateNewCost ;
         }
     }
     
     function updateIdLastOwner(uint _setIdLastOwner)public {
         if ( msg.sender == owner){
              idLastOwner = _setIdLastOwner ;
         }
     }
     
     function getLastCost()public view returns(uint){
         return (lastCost);
     }
     
     function getLastOwner()public view returns(uint){
         return (idLastOwner);
     }
     
     function get_all_deta() public view returns(uint,uint,uint,uint){
         return(serialProduct , idProductManufacturer ,idLastOwner , lastCost );
     } 
}