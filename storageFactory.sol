// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import {SimpleStorage} from "./simpleStorage.sol";

contract storageFactory {

   SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorage () public {
       SimpleStorage newSimpleStorageContracts = new SimpleStorage();
       listOfSimpleStorageContracts.push(newSimpleStorageContracts);
         // list of simple storage contracts in the array is pushed to the array
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
      //Address
      //ABI - Application Binary Index
      // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
      // mySimpleStorage.store(_simpleStorageNumber);
      listOfSimpleStorageContracts[_simpleStorageIndex].store(_simpleStorageNumber);

    }

    function sfGet (uint256 _simpleStorageIndex) public view returns(uint256 ) {
      //Address
      //ABI - Application Binary Index
      // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
      // return (mySimpleStorage.retrieve());
      return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}