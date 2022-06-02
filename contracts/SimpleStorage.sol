/*
 *  Solidity contains the License of the contract
 *   The version which is needed to  be  used must be specified by using the operators.
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; //  Using the version greater than that version

// The contract in solidity start from here only.
contract SimpleStorage {
    /*
    Types in  Solidity
    boolean, unit, int, address, bytes
    Every type get their value by default
   */
    bool isFavoriteNumber;
    unit256 favoriteNumber = 5; // Lower is unit8 and step sizeof 8 UP lly for int8
    string myName = "imskanand";
    int256 favoriteInt = -5;
    address myAddress = 0x062B90898540ca8B842C2f317EfDB949316387fe;
    bytes32 favoriteByte = "cat"; //  converted to  hexadecimal like 0x and max size is byte32
}
