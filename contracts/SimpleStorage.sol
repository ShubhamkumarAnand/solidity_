/*
        Solidity contains the License of the contract
        The version which is needed to  be  used must be specified by using the operators.
    */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; //  Using the version greater than that version

// The contract in solidity start from here only.
contract SimpleStorage {
    /*
        Types in  Solidity
        boolean, unit, int, address, bytes
        Lower is unit8 -> uint256 and step sizeof 8 UP similarly for int8 -> uint256
        Every type get their value by default
        Default value of uint is  = 0
        Bytes is converted to  hexadecimal like 0x and max size is byte32
   */

    uint256 favoriteNumber = 5;

    /*
        Only view and Pure function doesn't  costs gas.
        View function doesn't allows the modification of the state
        when the view function run inside the store function it will cost gas
        Pure function doesn't allows reading as well as changing of any data in the blockchain
    */
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function add() public pure returns (uint256) {
        return (1 + 6);
    }
}
