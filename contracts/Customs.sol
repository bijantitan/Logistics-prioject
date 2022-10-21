// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.16;

interface Logistics {
    function ApproveCustom1(address _orderaddress) external;
    function ApproveCustom2(address _orderaddress) external;
}

contract Custom1{

    address public owner = msg.sender;

    modifier adminOnly() {
        require(msg.sender == owner,"No admin");
        _;
    }
    

    function approveCandidate(address _coustmer)  public adminOnly{
        Logistics L = Logistics(_coustmer);
        L.ApproveCustom1(_coustmer);
    }

}

contract Custom2{

    address public owner = msg.sender;

    modifier adminOnly() {
        require(msg.sender == owner,"No admin");
        _;
    }

    function approveCandidate(address _coustmer)  public adminOnly{
        Logistics L = Logistics(_coustmer);
        L.ApproveCustom2(_coustmer);
    }

}