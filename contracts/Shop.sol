// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.16;

contract shop{

    address public Saller = msg.sender;
    address public coustmer;

    struct selling_item{
        string Name;
        }

    mapping(uint => selling_item) public Selling_item;

    string[] buyer;

    mapping(uint=>string) itemlist;

    function Setproducts(uint _Id, string memory _Name)  public {
        itemlist[_Id] =_Name;
        Selling_item[_Id] = selling_item(_Name);
        
    }

    function buy(uint _itemID) public payable returns(address){
        coustmer = msg.sender;
        require(msg.value == 0.1 ether,"Not enough Money!!");
        buyer.push(itemlist[_itemID]);
        return coustmer;
    }

    function order_product() view  public returns(string[]memory){
        return buyer;
    }

}
