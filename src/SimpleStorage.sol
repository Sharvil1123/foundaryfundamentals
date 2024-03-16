// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 

contract SimpleStorage{
    
    uint256 myFavouriteNumber ;
   // uint256[] listOfFavouriteNumbers; // array 

   // struct creats your own type!
   struct Person{
    uint256 favouriteNumber;
    string name;
   }

   //Person public myFriend = Person(34, "Sharvil"); // for prsonalized tpes such as structs, the typee has to be declared on both the sides! for xample person was declared on both the siudes.
    //    Person public shab = Person({
    //     favouriteNumber: 2,
    //     name: "Sharvil"
    //    }); // jusst another format(spcific)

    // for list of friends, use array

    Person[] public listOfMyFriends; //dynamic array

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavouriteNumber;
    }

    function addFriends(string memory _name, uint256 _favouriteNumber) public {
        listOfMyFriends.push(Person(_favouriteNumber,_name));
        nameToFavouriteNumber[_name] = _favouriteNumber;

    }

    //calldata - temporar variablees that cannot be modified.
    //memory - temporary variablees that can be modified.
    //storage - parmanent variablees that can be modified.
}

