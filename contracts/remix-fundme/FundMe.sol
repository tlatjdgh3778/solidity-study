// Get funds from users 
// 사용자로부터 자금을 받는다. => 사용자들이 돈을 송금하거나 예치할 수 있도록
// Withdraw funds 
// 자금을 인출한다. => 스마트 컨트랙트에서 보관 중인 자금을 누군가 (소유자)가 꺼낼 수 있도록 한다.
// Set a minimum funding value in USD 
// 최소 자금 제공 금액을 설정한다. => 최소 10달러 이상이어야 펀딩 가능하게 제한하는 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FundMe {

    uint256 public minimumUSD = 5;

    // payable 붙은 함수나 주소만 이더를 전송 받을 수 있다.
    function fund() public payable  {
        // Allow users to send money
        // Have a minimum money sent
        // 1. How do we send ETH to this contract ?
        // 전역 변수 msg, msg.value 로 전송된 이더 금액을 확인할 수 있
        require(msg.value >= minimumUSD, "didn't send enough ETH"); // 1e18 = 1 ETH = 1,000,000,000,000,000,000 = 1 * 10 ** 18
        // 조건을 만족하지 않으면, 트랜잭션은 revert (되돌리기)됨
        // 거래가 revert 되면, 이 트랜잭션의 모든 상태 변경이 취소된다.
        // 단, 사용자는 사용한 가스는 환불받지 못한다.

        // What is revert ?
        // Undo any actions that have been done, and send the remaining gas back
        // 지금까지 실행된 작업들을 되돌리고, 남은 가스를 사용자에게 반환함
    }

    // function widthraw() public {}
}

// oracle
// => smart contract 에 외부 데이터나 계산을 제공
// 하지만 oracle 중앙 집중식임
// => 그래서 ChainLink 가 해결책이 됨
// 외부 데이터를 연결하기 위한 분산형 오라클 네트워크, 원하는 데이터를 가져오거나, 원하는 계산을 수행할 수 있음 
// 이로 인해 하이브리드 smart contract 가 생겨난다.
// 온체인과 오프체인을 결합하여 놀라울 정도로 기능이 풍부하고 강력한 애플리케이션을 만들 수 있게됨
