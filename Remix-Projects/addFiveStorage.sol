// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {SimpleStorage} from "./simpleStorage.sol";

//Using Inheritance 
contract addFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public virtual override {
        myFavoriteNumber = _newNumber + 5;
    }
}

