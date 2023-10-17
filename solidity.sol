// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        tokenName = _name;
        tokenSymbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function mint(address _to, uint256 _value) public {
        require(_to != address(0), "Invalid address");
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(address _from, uint256 _value) public {
        require(_from != address(0), "Invalid address");
        require(balances[_from] >= _value, "Insufficient balance for burning");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
