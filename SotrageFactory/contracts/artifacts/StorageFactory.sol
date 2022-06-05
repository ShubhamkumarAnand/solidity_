// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // This is saying anything in the range of 0.8 is ok

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
}
