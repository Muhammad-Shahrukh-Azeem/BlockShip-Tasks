// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

contract Task3{

address owner;

// This will assign owner as the address of the sender.
constructor() {
    owner = msg.sender;
}

// This will be used in function to restrict them to be only used by the  owner.
// This could have been done with library ownable.
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

    struct tasks{
        uint priority;
        string task;
        bool complete;
    }

    mapping(uint => mapping(string => bool)) toDoList;
    uint[] public list;
    
    // This function assigns the value to priority and tak and set them equal to true or false (meaning complete or incomplete)
    function setTask(uint _priority, string memory _task) external onlyOwner(){
        toDoList[_priority][_task] = false;    
    }

    // This function will mark a task as completed when called.
    function taskComplete(uint _priority,string memory _task) external onlyOwner(){
        toDoList[_priority][_task] = true;
    }

    // This function will remove a task.
     function removeTask(uint _priority, string memory _task) external onlyOwner(){
        delete toDoList[_priority][_task];
    }
}
