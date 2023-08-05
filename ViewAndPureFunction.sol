// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathOperations {
    function square(uint256 _number) external view returns (uint256) {
        return _number * _number;
    }

    function add(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }

    function divide(uint256 _dividend, uint256 _divisor) external pure returns (uint256 quotient, uint256 remainder) {
        quotient = _dividend / _divisor;
        remainder = _dividend % _divisor;
    }
}
