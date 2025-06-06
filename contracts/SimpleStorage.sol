// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // starting our version

contract SimpleStorage {
    // Basic Type: boolean, uint, unt, address, bytes
    // 기본값을 지정하지 않으면 0이 기본값
    uint256 myFavoriteNumber; // default: 0

    // 숫자 배열
    // uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // mapping
    mapping (string => uint256) public nameToFavoriteNumber;

    // dynamic array : Person[]
    // static array : Person[3]

    Person[] public listOfPeople;

    // 함수를 사용해서 favoritNumber 를 저장함
    // virtual 
    function store(uint256 _favoritNumber) public virtual  {
        myFavoriteNumber = _favoritNumber;
    }

    // view: read only
    // pure: return 7;
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    // calldata : 수정할 수 없는 임시 변수
    // memory : 수정할 수 있는 임시 변수
    // storage : 수정할 수 있는 영구 변수
    function addPerson(string memory _name, uint256 _favoriteNumber) public  {
        Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}