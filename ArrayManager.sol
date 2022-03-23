// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ArrayManager{
    uint[] public Randoms; 
    uint[] public Rands = [4, 200, 7, 6, 8, 0, 1, 113]; 

    function GetItemRandoms(uint index) public view returns(uint){
        return Randoms[index];
    }
    function GetRandoms() public view returns(uint[] memory){
        return Randoms;
    }
    function PushToRandoms(uint thing) public returns(bool){
        Randoms.push(thing);
        return true;
    }
    function PopFromRands() public returns(bool){
        Rands.pop();
        return true;
    }
    function RemoveFromRandoms(uint item) public returns(bool){
        for(uint i = 0; i < Randoms.length -1; i++){
            if(Randoms[i] == item){
                delete Randoms[i];
                return true;
            }
            else{continue;}
        }
        return false;
    }
    function GetRandomsLength() public view returns(uint){
        return Randoms.length;
    }
    function RandsAddMod(uint index) public view returns(uint){
        return addmod(Randoms[index], 5, 3);
    }
    function RandsMulMod(uint index) public view returns (uint){
        return mulmod(Randoms[index], 5, 3);
    }
}
