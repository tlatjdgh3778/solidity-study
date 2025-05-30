// Get funds from users 
// 사용자로부터 자금을 받는다. => 사용자들이 돈을 송금하거나 예치할 수 있도록
// Withdraw funds 
// 자금을 인출한다. => 스마트 컨트랙트에서 보관 중인 자금을 누군가 (소유자)가 꺼낼 수 있도록 한다.
// Set a minimum funding value in USD 
// 최소 자금 제공 금액을 설정한다. => 최소 10달러 이상이어야 펀딩 가능하게 제한하는 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FundMe {
    function fund() public {}

    function widthraw() public {}
}