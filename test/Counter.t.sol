// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "../src/Counter.sol";

contract TestContract is Test {
    Counter c;

    function setUp() public {
        c = new Counter(2);
    }

    function testInc() public {
        c.increment();
        c.increment();
        assertEq(c.getNum(), 4, "increment succes");
    }
    function testDec() public {
        c.decrement();
        c.decrement();
        assertEq(c.getNum(), 0, "decrement success");
    }
    function testFailDec() public {
        c.decrement();
        c.decrement();
        c.decrement();
    }
}
