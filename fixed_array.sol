//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract FixedSizeArrays {
    uint [3] public numbers;

    //byte arrays
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;
    //... up to bytes32 - all solidity data types

    //changing an element of the array at a specific index
    function setElement(uint index, uint value) public {
        numbers[index] = value;
    }

    //returning number of elements in the array
    function getLength() public view returns(uint) {
        return numbers.length;
    }

    function setBytesArray() public {
        b1 = "a";
        b2 = 'ab';
        b3 = 'z';
    }
}