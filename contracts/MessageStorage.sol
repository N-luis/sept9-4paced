// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.20; 
contract MessageStorage { 
    string private message; 
    address public owner; 
    event MessageChanged( 
    address indexed user, 
    string newMessage 
    ); 
constructor(string memory initialMessage) { 
owner = msg.sender; 
message = initialMessage; 
    } 
function setMessage(string memory newMessage) public { 
    message = newMessage; 
    emit MessageChanged( 
    msg.sender, 
    newMessage 
    ); 
    } 
    function getMessage() public view returns (string memory) { 
    return message; 
    } 
}