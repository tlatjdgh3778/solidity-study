// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // starting our version

import { SimpleStorage } from "./SimpleStorage.sol";

// inheritance
contract AddFiveStorage is SimpleStorage {
    // overrides
    // virtual override
    // override
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}