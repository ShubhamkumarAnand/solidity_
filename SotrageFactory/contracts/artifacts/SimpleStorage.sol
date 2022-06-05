// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    // Pre-Defined Data Structure -> favoriteNumber
    uint256 favoriteNumber;

    function setNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        favoriteNumber += 35;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addNumber() public pure returns (uint256) {
        return (45 + 76);
    }

    // User Defined Data Structure -> People
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public person;

    mapping(name => favoriteNumber) public nameToFavoriteNumber;

    function set(string memory _name, uint356 _favoriteNumber) public {
        person.push(People(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
