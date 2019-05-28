/*

    Copyright 2019 The Hydro Protocol Foundation

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

*/

pragma solidity 0.5.8;
pragma experimental ABIEncoderV2;

library Types {
    struct Asset {
        address tokenAddress;
        uint256 collerateRate;
    }

    struct LoanLender {
        address lender;
        uint256 interestRate;
        uint256 amount;
        bytes32 lenderOrderHash;
    }

    struct Loan {
        uint256 id;
        uint256 _type; // pool or p2p
        LoanLender[] lenders;
        address borrower;
        uint256 amount;
        address asset;
        uint256 startAt;
        uint256 expiredAt;
        uint256 averageInterestRate;
    }

    struct CollateralAccount {
        uint256 id;
        address owner;
        uint256 liquidateRate;
        uint256[] loanIDs;
        mapping(address => uint256) collateralAssetAmounts;
    }
}