// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InscribedToken {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;
    mapping(uint256 => string) public tokenInscription;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Inscription(uint256 indexed tokenId, string inscription);

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _initialSupply
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _initialSupply * 10**uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint256 _value) external returns (bool) {
        require(_value <= balanceOf[msg.sender], "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function setInscription(uint256 _tokenId, string memory _inscription) external {
        require(_tokenId < totalSupply, "Invalid token ID");

        tokenInscription[_tokenId] = _inscription;
        emit Inscription(_tokenId, _inscription);
    }

    function getInscription(uint256 _tokenId) external view returns (string memory) {
        require(_tokenId < totalSupply, "Invalid token ID");

        return tokenInscription[_tokenId];
    }
}
