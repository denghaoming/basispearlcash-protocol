// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface IRewardSupplier {
    /**
     * @dev mint and distribute Reward to caller
     * NOTE: caller must be approved consumer
     */
    function distribute(uint256 _since) external returns (uint256);

    /**
     * @dev returns number of Reward _consumer is expected to recieved at current block
     */
    function preview(address _consumer, uint256 _since)
        external
        view
        returns (uint256);
}