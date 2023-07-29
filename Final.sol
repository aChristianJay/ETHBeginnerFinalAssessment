

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract MyToken {
    string public name = "Newstate";        // Token Name
    string public abbr = "NS";      // Token Abbreviation
    uint256 public totalSupply = 0; // Total Supply

    mapping(address => uint256) public balances;


    function mint(address _address, uint _amount) public {
        totalSupply += _amount;
        balances[_address] += _amount;
    }

    function burn(address _address, uint256 _amount) public {
             if (balances[_address] >= _amount){
            totalSupply -= _amount;
            balances[_address] -= _amount;
        }
    }
}
