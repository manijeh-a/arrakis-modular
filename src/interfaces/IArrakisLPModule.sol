// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IArrakisLPModule {
    function deposit(uint256 proportion) external;
    function withdraw(uint24 proportion) external returns (uint256 amount0, uint256 amount1);

    function token0() external view returns (address);
    function token1() external view returns (address);
    function getInits() external view returns (uint256 init0, uint256 init1);
    function totalUnderlying() external view returns (uint256 amount0, uint256 amount1);
    function totalUnderlyingAtPrice(uint256 priceX96) external view returns (uint256 amount0, uint256 amount1);
}