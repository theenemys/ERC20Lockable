// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


/**
 * @dev Implementation of ERC20 Lockable by wschoi
 */
abstract contract ERC20Lockable {

    mapping (address => bool) internal _isLock;

    mapping (address => uint256) internal _lockDate;

    mapping (address => uint256) internal _lockBalance;

   
    event LockedTransfer(address sender, address receiver, uint256 amount, uint256 lockDate);

    event Unlock(address sender, uint256 amount, uint256 lockDate);


    /**
     * @dev Returns true if the contract is locked, and false otherwise.
     */
    function locked(address account) public view returns (bool) {
        return _isLock[account];
    }

    function lockDateInfo(address account) public view returns (uint256) {
        return _lockDate[account];
    }

    function lockBalanceInfo(address account) public view returns (uint256) {
        return _lockBalance[account];
    }
   
}