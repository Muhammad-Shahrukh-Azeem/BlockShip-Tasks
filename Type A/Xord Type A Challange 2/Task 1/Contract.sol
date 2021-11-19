// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

contract shahTokenWithERC20{

    //This initializes the value of our tokens.
    string public tokenName = 'Shahrukh Token';
    string public symbol = 'Sha';
    string public standard = 'Sha token version 1.0';
    uint public totalSupply;

    event Transfer(address indexed _from, address indexed _to, uint _value);
    event Approval(address indexed _owner, address indexed _spender, uint _value);

    //This acts as a storage to keep all records of balance.
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    //This initializes the total supply of the token.
    constructor(uint _initialSupply){
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    //This allows the creator to send tokens.
    function transfer(address _to, uint _value) public returns(bool sucess){
        require((balanceOf[msg.sender] >= _value));
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    //This allows an account to use tokens.
    function approve(address _spender, uint _value) public returns(bool sucess){
        allowance[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        return true;
    }

    //This allows third party user to send tokens to the someone. if they are allowed.
    function transferFrom(address _from, address _to, uint _value) public returns(bool sucess){
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }
    
}    