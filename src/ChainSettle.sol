// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// ============ Imports ============
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title ChainSettle
/// @author Uttam Singh

contract ChainSettle {
    /// ============ Structs ============

    /// @notice Individual bet
    struct Bet {
        /// @notice Has bet already been settled
        bool settled;
        /// @notice Has partyUSDC sent funds
        bool USDCSent;
        /// @notice Has partyWBTC sent funds
        bool WBTCSent;
        /// @notice Bet starting timestamp
        uint256 startTimestamp;
        /// @notice Party providing USDC
        address partyUSDC;
        /// @notice Party providing wBTC
        address partyWBTC;
    }

    /// ============ Constants ============

    /// @notice 90 days
    uint256 public constant BET_DURATION = 60 days;
    /// @notice USDC amount
    uint256 public constant USDC_AMOUNT = 1_000_000e6;
    /// @notice wBTC amount
    uint256 public constant WBTC_AMOUNT = 1e8;
    /// @notice winning BTC/USD price
    uint256 public constant WINNING_BTC_PRICE = 1_000_000;
}
