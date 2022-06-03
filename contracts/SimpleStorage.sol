// Solidity Basics

/*
        Solidity contains the License of the contract
        The version which is needed to  be  used must be specified by using the operators Greater then , smaller than and in Between.
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

    // The custom data type people defined. These are auto indexed to 0,1 etc
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //  Mapping of the variable
    mapping(string => uint256) public nameToFavoriteNumber;

    uint256[] favoriteNumber; // Dynamic Array -> without any specification of memory.
    // People public person = People({favoriteNumber: 11, name: "Shubham"});

    //  Creating a Dynamic Array of People variable
    People[] public person;

    /*
        calldata -> Temporary variable that cannot be modified
        memory -> Temporary variable that can be modified
        Storage -> Permanent variable that can be modified
        ! NOTE ->  these EVM are applied only when there is an array.
     */

    // This function will cost gas
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        /*
            People newPerson = People({
            favoriteNumber: _favoriteNumber,
            name: _name
        });
        People.push(newPerson);
         */
        person.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // This function will cost gas
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    /*
        Only view and Pure function doesn't  costs gas.
        View function doesn't allows the modification of the state
        when the view function run inside the store function it will cost gas
        Pure function doesn't allows reading as well as changing of any data in the blockchain
    */

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function add() public pure returns (uint256) {
        return (1 + 6);
    }
}
