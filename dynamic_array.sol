pragma solidity >=0.5.0 <0.9.0;

contract DynamicArrays {
    //dynamic arrays have length, push, and pop
    uint[] public numbers;

    function getLength() public view returns(uint){
        return numbers.length;
    }


    //adds an element to end of array
    function addElement(uint item) public {
        numbers.push(item);
    }

    function getElement(uint i) public view returns(uint) {
        if(i < numbers.length){
            return numbers[i];
        }

        return 0;
    }

    //deletes last element in an array
    function popElement() public {
        numbers.pop();
    }

    function f() public pure{
        //not possible to resize memory arrays
        uint[] memory y = new uint[](3);
        y[0] = 10;
        y[1] = 20;
        y[2] = 30;
    }

}