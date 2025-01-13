# Changelog

## 1.7.1 - 2025-01-13
### Changed
- Updated documentation links.

## 1.7.0 -2024-12-05
### Added
- Convert endpoints:
  - `GET /sapi/v1/convert/exchangeInfo`
  - `GET /sapi/v1/convert/assetInfo`
  - `POST /sapi/v1/convert/getQuote`
  - `POST /sapi/v1/convert/acceptQuote`
  - `GET /sapi/v1/convert/orderStatus`
  - `POST /sapi/v1/convert/limit/placeOrder`
  - `POST /sapi/v1/convert/limit/cancelOrder`
  - `POST /sapi/v1/convert/limit/queryOpenOrders`

- Loan endpoints:
  - `GET /sapi/v2/loan/flexible/collateral/data`
  - `GET /sapi/v2/loan/flexible/loanable/data`
  - `POST /sapi/v2/loan/flexible/borrow`
  - `POST /sapi/v2/loan/flexible/repay`
  - `POST /sapi/v2/loan/flexible/adjust/ltv`
  - `GET /sapi/v2/loan/flexible/ltv/adjustment/history`
  - `GET /sapi/v2/loan/flexible/borrow/history`
  - `GET /sapi/v2/loan/flexible/ongoing/orders`
  - `GET /sapi/v2/loan/flexible/repay/history`
  - `GET /sapi/v1/loan/borrow/history`
  - `GET /sapi/v1/loan/ltv/adjustment/history`
  - `GET /sapi/v1/loan/repay/history`

- Margin endpoints:
  - `POST /sapi/v1/margin/borrow-repay`
  - `GET /sapi/v1/margin/borrow-repay`
  - `GET /sapi/v1/margin/available-inventory`
  - `GET /sapi/v1/margin/leverageBracket`
  - `POST /sapi/v1/margin/manual-liquidation`

- Market endpoints:
  - `GET /api/v3/ticker/tradingDay`
  - `GET /api/v3/uiKlines`

- Simple Earn endpoints:
  - `POST /sapi/v1/simple-earn/locked/setRedeemOption`

- Sub Account endpoints:
  - `GET /sapi/v4/sub-account/assets`
  - `POST /sapi/v1/sub-account/eoptions/enable`
  - `GET /sapi/v1/managed-subaccount/marginAsset`
  - `GET /sapi/v1/sub-account/transaction-statistics`
  - `GET /sapi/v1/managed-subaccount/fetch-future-asset`
  - `GET /sapi/v1/managed-subaccount/queryTransLogForTradeParent`
  - `GET /sapi/v1/managed-subaccount/query-trans-log`
  - `GET /sapi/v1/managed-subaccount/queryTransLogForInvestor`
  - `GET /sapi/v1/managed-subaccount/info`

- Trade endpoint:
  - `GET /api/v3/myPreventedMatches`
  - `GET /api/v3/myAllocations`
  - `GET /api/v3/account/commission`

- Wallet endpoints:
  - `GET /sapi/v1/spot/delist-schedule`
  - `GET /sapi/v1/capital/deposit/address/list`
  - `POST /sapi/v1/capital/deposit/credit-apply`
  - `GET /sapi/v1/asset/wallet/balance`
  - `POST /sapi/v1/asset/dust-btc`
  - `GET /sapi/v1/asset/ledger-transfer/cloud-mining/queryByPage`
  - `GET /sapi/v1/asset/custody/transfer-history`
  - `GET /sapi/v1/account/info`

- Websocket:
  - `<symbol>@avgPrice`

### Changed
- Added new parameter `redeemTo` to endpoint `POST /sapi/v1/simple-earn/locked/subscribe`
- Added new parameter `timeZone` to endpoint `GET /api/v3/klines`
- Added new parameters `orderRateLimitExceededMode`, `strategyId`, `strategyType`, `selfTradePreventionMode` and `cancelRestrictions` to endpoint `POST /api/v3/order/cancelReplace`
- Added new parameters `showPermissionSets` and `symbolStatus` to endpoint `GET /api/v3/exchangeInfo`
- Replaced endpoint `POST /api/v3/order/oco` by `POST /api/v3/orderList/oco`

## 1.6.0 - 2024-10-02

### Changed
- Updated endpoint `/sapi/v1/sub-account/subAccountApi/ipRestriction` to `/sapi/v2/sub-account/subAccountApi/ipRestriction`
- Update dependencies

### Removed
- Deprecated margin endpoints:
  - `POST /sapi/v1/margin/transfer`
  - `POST /sapi/v1/margin/isolated/transfer`
  - `POST /sapi/v1/margin/loan`
  - `POST /sapi/v1/margin/repay`
  - `GET /sapi/v1/margin/isolated/transfer`
  - `GET /sapi/v1/margin/asset`
  - `GET /sapi/v1/margin/pair`
  - `GET /sapi/v1/margin/isolated/pair`
  - `GET /sapi/v1/margin/loan`
  - `GET /sapi/v1/margin/repay`
  - `GET /sapi/v1/margin/dribblet`
  - `GET /sapi/v1/margin/dust`
  - `POST /sapi/v1/margin/dust`

- Deprecated SubAccount endpoint: `POST /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList`

- Deprecated Futures endpoints:
  - `GET /sapi/v1/futures/loan/interestHistory`
  - `GET /sapi/v1/futures/loan/collateralRepayResult`
  - `POST /sapi/v1/futures/loan/collateralRepay`
  - `GET /sapi/v1/futures/loan/collateralRepay`
  - `GET /sapi/v1/futures/loan/collateralRepayLimit`
  - `GET /sapi/v1/futures/loan/liquidationHistory`
  - `GET /sapi/v1/futures/loan/adjustCollateral/history`
  - `POST /sapi/v2/futures/loan/adjustCollateral`
  - `GET /sapi/v2/futures/loan/calcMaxAdjustAmount`
  - `GET /sapi/v2/futures/loan/calcAdjustLevel`
  - `GET /sapi/v2/futures/loan/configs`
  - `GET /sapi/v2/futures/loan/wallet`
  - `GET /sapi/v1/futures/loan/repay/history`
  - `POST /sapi/v1/futures/loan/repay`
  - `GET /sapi/v1/futures/loan/borrow/history`
  - `POST /sapi/v1/futures/loan/borrow`
  - `GET /sapi/v1/futures/transfer`
  - `POST /sapi/v1/futures/transfer`

- BLVT endpoints:
  - `GET /sapi/v1/blvt/tokenInfo`
  - `POST /sapi/v1/blvt/subscribe`
  - `GET /sapi/v1/blvt/subscribe/record`
  - `POST /sapi/v1/blvt/redeem`
  - `GET /sapi/v1/blvt/redeem/record`
  - `GET /sapi/v1/blvt/userLimit`

## 1.5.2 - 2024-07-23

### Changed
- Updated dependencies and resolve github security issue
- Added `permissions` parameter to `GET /api/v3/exchangeInfo`

## 1.5.1 - 2024-06-18

### Changed
- Updated dependencies and resolve github security issue

## 1.5.0 - 2024-04-10

### Added
- Support Ruby 3.2 and 3.3
- New endpoint for Simple Earn:
  - `GET /sapi/v1/simple-earn/flexible/list` to query available Simple Earn flexible product list
  - `GET /sapi/v1/simple-earn/locked/list` to query available Simple Earn locked product list
  - `POST /sapi/v1/simple-earn/flexible/subscribe` to subscribe to a flexible product
  - `POST /sapi/v1/simple-earn/locked/subscribe` to subscribe to a locked product
  - `POST /sapi/v1/simple-earn/flexible/redeem` to redeem a flexible product
  - `POST /sapi/v1/simple-earn/locked/redeem` to redeem a locked product
  - `GET /sapi/v1/simple-earn/flexible/position` to get a flexible product position
  - `GET /sapi/v1/simple-earn/locked/position` to get a locked product position
  - `GET /sapi/v1/simple-earn/account` to get a simple account balances
  - `GET /sapi/v1/simple-earn/flexible/history/subscriptionRecord` to get flexible subscription records
  - `GET /sapi/v1/simple-earn/locked/history/subscriptionRecord` to get locked subscription records
  - `GET /sapi/v1/simple-earn/flexible/history/redemptionRecord` to retrieve flexible redemption records
  - `GET /sapi/v1/simple-earn/locked/history/redemptionRecord` to retrieve locked redemption records
  - `GET /sapi/v1/simple-earn/flexible/history/rewardsRecord` to get flexible rewards history
  - `GET /sapi/v1/simple-earn/locked/history/rewardsRecord` to get locked rewards history
  - `POST /sapi/v1/simple-earn/flexible/setAutoSubscribe` to set an auto-subscription to a flexible product
  - `POST /sapi/v1/simple-earn/locked/setAutoSubscribe` to set an auto-subscription to a locked product
  - `GET /sapi/v1/simple-earn/flexible/personalLeftQuota` to get flexible personal left quota
  - `GET /sapi/v1/simple-earn/locked/personalLeftQuota` to get locked personal left quota
  - `GET /sapi/v1/simple-earn/flexible/subscriptionPreview` to get flexible subscription preview
  - `GET /sapi/v1/simple-earn/locked/subscriptionPreview` to get locked subscription previews
  - `GET /sapi/v1/simple-earn/flexible/history/rateHistory` to get a rate history
  - `GET /sapi/v1/simple-earn/flexible/history/collateralRecord` to get collateral records

### Changed
- Update dependencies
- Drop support of Ruby 2.6 and 2.7

### Removed
- Deprecated Savings endpoints:
  - `GET /sapi/v1/lending/daily/product/list`
  - `GET /sapi/v1/lending/daily/userLeftQuota`
  - `POST /sapi/v1/lending/daily/purchase`
  - `GET /sapi/v1/lending/daily/userRedemptionQuota`
  - `POST /sapi/v1/lending/daily/redeem`
  - `GET /sapi/v1/lending/daily/token/position`
  - `GET /sapi/v1/lending/project/list`
  - `POST /sapi/v1/lending/customizedFixed/purchase`
  - `GET /sapi/v1/lending/union/account`
  - `GET /sapi/v1/lending/union/purchaseRecord`
  - `GET /sapi/v1/lending/union/redemptionRecord`
  - `GET /sapi/v1/lending/union/interestHistory`
  - `GET /sapi/v1/lending/project/position/list`
  - `POST /sapi/v1/lending/positionChanged`

- Deprecated Staking endpoints:
  - `GET /sapi/v1/staking/productList`
  - `POST /sapi/v1/staking/purchase`
  - `POST /sapi/v1/staking/redeem`
  - `GET /sapi/v1/staking/position`
  - `GET /sapi/v1/staking/stakingRecord`
  - `POST /sapi/v1/staking/setAutoStaking`
  - `GET /sapi/v1/staking/personalLeftQuota`

- Deprecated BSwap endpoints:
  - `GET /sapi/v1/bswap/pools`
  - `GET /sapi/v1/bswap/liquidity`
  - `POST /sapi/v1/bswap/liquidityAdd`
  - `POST /sapi/v1/bswap/liquidityRemove`
  - `GET /sapi/v1/bswap/liquidityOps`
  - `GET /sapi/v1/bswap/quote`
  - `POST /sapi/v1/bswap/swap`
  - `GET /sapi/v1/bswap/swap`
  - `GET /sapi/v1/bswap/poolConfigure`
  - `GET /sapi/v1/bswap/addLiquidityPreview`
  - `GET /sapi/v1/bswap/removeLiquidityPreview`

## 1.4.0 - 2022-12-20
### Added
- Add RSA signature
- Support Ruby 3.1

### Changed
- Drop support of Ruby 2.5


## 1.3.0 - 2022-07-21

### Add
- New endpoint for Margin:
  - `POST /sapi/v3/asset/getUserAsset` to get user assets.
- New endpoint for Wallet:
  - `GET /sapi/v1/margin/dribblet` to query the historical information of user's margin account small-value asset conversion BNB.


## 1.2.0 - 2022-07-15

### Add
- Sub account endpoints
  - `POST /sapi/v1/sub-account/subAccountApi/ipRestriction` to support master account enable and disable IP restriction for a sub-account API Key
  - `POST /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList` to support master account add IP list for a sub-account API Key
  - `GET /sapi/v1/account/apiRestrictions/ipRestriction` to support master account query IP restriction for a sub-account API Key
  - `DELETE /sapi/v1/account/apiRestrictions/ipRestriction/ipList` to support master account delete IP list for a sub-account API Key
- Market endpoint
  - `GET /api/v3/ticker`
- Trade endpoint
  - `POST /api/v3/order/cancelReplace`
- Websocket methods
  - `<symbol>@ticker_<window_size>`
  - `!ticker_<window-size>@arr`


## 1.1.0 - 2022-06-09

### Add
- Convert endpoint
  - `GET /sapi/v1/convert/tradeFlow`
- Margin Endpoint
  - `GET /sapi/v1/margin/crossMarginData`
  - `GET /sapi/v1/margin/isolatedMarginData`
  - `GET /sapi/v1/margin/isolatedMarginTier`
  - `GET /sapi/v1/margin/rateLimit/order`
 - All Staking Endpoints

### Update
- Fixing rubocop warnnings

## 1.0.3 - 2022-05-06
- Update rake version

## 1.0.2 - 2021-11-21

### Update
- Change README description and package settings

## 1.0.1 - 2021-11-21

### Update
- Change package name

## 1.0.0 - 2021-11-18

### Added
- First release
