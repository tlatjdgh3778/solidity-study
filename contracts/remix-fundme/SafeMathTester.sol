// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeMathTester {
    uint8 public bigNumber = 255;
    
    // 0.6.0 버전(0.7.6 이하) 에서는 overflow, underflow 를 체크하지 않음
    // => 255 + 1 => 0 이 됨. 다시 0부터 시작
    // 0.8.0 버전에서서는 overflow, underflow 를 체크함
    // => 255 + 1 => 트랜잭션이 실패함
    function add() public {
        // bigNumber = bigNumber + 1;

        // 255 + 1 => 0 이 됨. 다시 0부터 시작
        unchecked { bigNumber = bigNumber + 1; }
    }
}