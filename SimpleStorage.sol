// EVM, Ethereum Virtual Machine
// Ethereum, Polygon, Arbitrum, Optimism, Zksync

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // solidity versions

contract SimpleStorage {
    //favoriteNumber gets initialized to 0 if no value is giving
    
    uint256 myFavoriteNumber; // 0
    // uint256[] listofFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listofPeople; // []

    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;

    function store (uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listofPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber [_name] =_favoriteNumber;
    }
}
