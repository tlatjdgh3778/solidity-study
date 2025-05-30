// Get funds from users 
// 사용자로부터 자금을 받는다. => 사용자들이 돈을 송금하거나 예치할 수 있도록
// Withdraw funds 
// 자금을 인출한다. => 스마트 컨트랙트에서 보관 중인 자금을 누군가 (소유자)가 꺼낼 수 있도록 한다.
// Set a minimum funding value in USD 
// 최소 자금 제공 금액을 설정한다. => 최소 10달러 이상이어야 펀딩 가능하게 제한하는 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FundMe {
    // payable 붙은 함수나 주소만 이더를 전송 받을 수 있
    function fund() public payable  {
        // Allow users to send money
        // Have a minimum money sent
        // 1. How do we send ETH to this contract ?
        // 전역 변수 msg, msg.value 로 전송된 이더 금액을 확인할 수 있
        require(msg.value > 1e18, "didn't send enough ETH"); // 1e18 = 1 ETH = 1,000,000,000,000,000,000 = 1 * 10 ** 18
        // 조건을 만족하지 않으면, 트랜잭션은 revert (되돌리기)됨
        // 거래가 revert 되면, 이 트랜잭션의 모든 상태 변경이 취소된다.
        // 단, 사용자는 사용한 가스는 환불받지 못한다.

        // What is revert ?
        // Undo any actions that have been done, and send the remaining gas back
        // 지금까지 실행된 작업들을 되돌리고, 남은 가스를 사용자에게 반환함

    }

    function widthraw() public {}
}