// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract ChickenFarm {
    
    struct Chicken {
        string name;
        uint id;
    }
    
    Chicken[] private chickens;
    
    function checkStatus() public pure returns (string memory) {
        // Return a message that checks whether the farm is working or not.
        return "The farm is working.";
    }
    
    function addChicken(string memory name) public {
        // This function is going to add our new chickens to the Chicken struct.
        uint id = chickens.length;
        chickens.push(Chicken(name, id));
    }
    
    function getChicken(uint id) public view returns (uint, string memory) {
        // Create getChicken function which takes the ID of the chicken and returns the chicken's ID and its name
        require(id < chickens.length, "Invalid chicken ID");
        return (chickens[id].id, chickens[id].name);
    }
}