// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface CalculatorInterface {
    function add(uint256 a, uint256 b) external pure returns (uint256);
}
abstract contract BaseCalculator {
    function subtract(uint256 a, uint256 b) public pure virtual returns (uint256);
}

contract AdvancedCalculator is CalculatorInterface, BaseCalculator {
    function add(uint256 a, uint256 b) external pure override returns (uint256) {
        return a + b;
    }

    function subtract(uint256 a, uint256 b) public pure override returns (uint256) {
        return a - b;
    }
}
