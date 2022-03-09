// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;
contract HelloWorld{
    string  message;
    address owner;
    struct  Userdetail {
        string name;
        address sender;
    }
    Userdetail userdetails;
    constructor(){
        message= "Hello world";
        owner= msg.sender;
    }

    function getWelcomeMessage()public view returns(string memory){
        return message;
    }
    function addYourName(string memory username)public payable{
        // require(msg.value > 0.001 ether);
        userdetails= Userdetail(username,msg.sender);
    }
    function createdBy()public view returns(address){
        return owner;
    }
    function getDetails()public view returns(string  memory username, address  user){
        username =userdetails.name;
        user = userdetails.sender;
    }
}